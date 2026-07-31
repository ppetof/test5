import Foundation
import Vision
import CoreImage
import AppKit

// usage: cutout <in.jpg> <outdir> [instanceIndices e.g. "1,2"]
// Emits a full-frame RGBA cutout (aligned to the source) plus a background
// plate whose subject area is blurred away, and prints the subject bbox.

func die(_ m: String) -> Never { FileHandle.standardError.write((m+"\n").data(using:.utf8)!); exit(1) }

let args = CommandLine.arguments
guard args.count >= 3 else { die("usage: cutout <in> <outdir> [indices]") }
let src = URL(fileURLWithPath: args[1])
let outDir = args[2]
try? FileManager.default.createDirectory(atPath: outDir, withIntermediateDirectories: true)

guard let ciSrc = CIImage(contentsOf: src) else { die("cannot read image") }
let W = ciSrc.extent.width, H = ciSrc.extent.height
let ctx = CIContext()

let handler = VNImageRequestHandler(url: src, options: [:])
let req = VNGenerateForegroundInstanceMaskRequest()
try handler.perform([req])

guard let obs = req.results?.first else { die("no foreground instances found") }
print("instances found: \(obs.allInstances.count) -> \(Array(obs.allInstances))")

var instances = obs.allInstances
if args.count >= 4, args[3] != "all" {
    let picked = args[3].split(separator: ",").compactMap { Int($0) }
    instances = IndexSet(picked)
    print("using instances: \(picked)")
}

// full-frame so the cutout stays pixel-aligned with the background plate
let maskedPB = try obs.generateMaskedImage(ofInstances: instances,
                                           from: handler,
                                           croppedToInstancesExtent: false)
var cut = CIImage(cvPixelBuffer: maskedPB)

// the mask alone drives the background repair
let maskPB = try obs.generateScaledMaskForImage(forInstances: instances, from: handler)
var mask = CIImage(cvPixelBuffer: maskPB)
let ms = max(W / mask.extent.width, H / mask.extent.height)
mask = mask.transformed(by: CGAffineTransform(scaleX: ms, y: ms))

func write(_ img: CIImage, _ name: String, png: Bool, maxW: CGFloat) {
    var out = img
    if out.extent.width > maxW {
        let s = maxW / out.extent.width
        out = out.transformed(by: CGAffineTransform(scaleX: s, y: s))
    }
    let rect = CGRect(x: 0, y: 0, width: out.extent.width, height: out.extent.height)
    guard let cg = ctx.createCGImage(out, from: rect) else { die("render failed \(name)") }
    let rep = NSBitmapImageRep(cgImage: cg)
    let data = png
        ? rep.representation(using: .png, properties: [:])!
        : rep.representation(using: .jpeg, properties: [.compressionFactor: 0.72])!
    try! data.write(to: URL(fileURLWithPath: "\(outDir)/\(name)"))
    print("wrote \(name)  \(Int(rect.width))x\(Int(rect.height))  \(data.count/1024) KB")
}

// ── background plate: smear the subject away so no crisp ghost remains
// Dilate well past the feather radius, so the mask is fully opaque over the
// whole subject and only the soft edge falls outside it. A feather wider
// than the dilation lets the original rider bleed back through.
let grown = mask
    .applyingFilter("CIMorphologyMaximum", parameters: [kCIInputRadiusKey: 34])
    .applyingFilter("CIGaussianBlur", parameters: [kCIInputRadiusKey: 16])
    .cropped(to: ciSrc.extent)

// Punch the subject out first, then let the surrounding forest bleed into
// the hole. Blurring the original instead would drag the bike's orange
// across the plate and leave a coloured ghost.
let clear = CIImage(color: CIColor.clear).cropped(to: ciSrc.extent)
let holed = clear.applyingFilter("CIBlendWithMask", parameters: [
    kCIInputBackgroundImageKey: ciSrc,
    kCIInputMaskImageKey: grown
])

var filled = holed.clampedToExtent()
for r in [180.0, 90.0, 40.0] {
    filled = filled
        .applyingFilter("CIGaussianBlur", parameters: [kCIInputRadiusKey: r])
        .cropped(to: ciSrc.extent)
        .unpremultiplyingAlpha()
        .settingAlphaOne(in: ciSrc.extent)
        .clampedToExtent()
}
// the averaged fill reads lighter than the surrounding wet forest
let smear = filled.cropped(to: ciSrc.extent)
    .applyingFilter("CIColorControls", parameters: [
        kCIInputBrightnessKey: -0.095,
        kCIInputSaturationKey: 0.85,
        kCIInputContrastKey: 0.96
    ])

let bg = smear.applyingFilter("CIBlendWithMask", parameters: [
    kCIInputBackgroundImageKey: ciSrc,
    kCIInputMaskImageKey: grown
])

write(bg, "hero-bg-2000.jpg", png: false, maxW: 2000)
write(bg, "hero-bg-1200.jpg", png: false, maxW: 1200)
write(cut, "hero-fg-1500.png", png: true, maxW: 1500)
write(cut, "hero-fg-1000.png", png: true, maxW: 1000)

// ── where is the subject, in normalised coords (top-left origin)?
struct Box { var minX = CGFloat.infinity, minY = CGFloat.infinity, maxX = -CGFloat.infinity, maxY = -CGFloat.infinity }
let step = 4
let cgMask = ctx.createCGImage(mask, from: ciSrc.extent)!
let mw = cgMask.width, mh = cgMask.height
var pixels = [UInt8](repeating: 0, count: mw * mh)
let g = CGContext(data: &pixels, width: mw, height: mh, bitsPerComponent: 8, bytesPerRow: mw,
                  space: CGColorSpaceCreateDeviceGray(), bitmapInfo: 0)!
g.draw(cgMask, in: CGRect(x: 0, y: 0, width: mw, height: mh))
var b = Box()
for y in stride(from: 0, to: mh, by: step) {
    for x in stride(from: 0, to: mw, by: step) where pixels[y*mw + x] > 110 {
        b.minX = min(b.minX, CGFloat(x)); b.maxX = max(b.maxX, CGFloat(x))
        b.minY = min(b.minY, CGFloat(y)); b.maxY = max(b.maxY, CGFloat(y))
    }
}
// CGContext draws bottom-up relative to CIImage space; report in image coords
let cx = (b.minX + b.maxX) / 2 / CGFloat(mw)
let cy = 1 - (b.minY + b.maxY) / 2 / CGFloat(mh)
print(String(format: "SUBJECT bbox x %.3f..%.3f  y %.3f..%.3f  centre %.3f,%.3f  covers %.1f%% width",
             b.minX/CGFloat(mw), b.maxX/CGFloat(mw),
             1 - b.maxY/CGFloat(mh), 1 - b.minY/CGFloat(mh),
             cx, cy, (b.maxX-b.minX)/CGFloat(mw)*100))
