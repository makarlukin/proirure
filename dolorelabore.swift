import CoreImage
import UIKit

func applyInvertFilter(to image: UIImage) -> UIImage? {
    guard let ciImage = CIImage(image: image) else { return nil }
    
    let invertFilter = CIFilter(name: "CIColorInvert")
    invertFilter?.setValue(ciImage, forKey: kCIInputImageKey)
    
    guard let outputImage = invertFilter?.outputImage else { return nil }
    return UIImage(ciImage: outputImage)
}

// Usage
if let originalImage = UIImage(named: "example.jpg") {
    let invertedImage = applyInvertFilter(to: originalImage)
    // Now you can use the invertedImage
}
