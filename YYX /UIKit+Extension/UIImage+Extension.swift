//
//  UIImage+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/7/22.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit

extension UIImage{
    static func giveMeQRCode(from string: String,backgroundColor:CIColor,frontGroundColor:CIColor) -> UIImage? {
        let data = string.data(using: String.Encoding.utf8)
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            guard let colorFilter = CIFilter(name: "CIFalseColor") else { return nil }
            
            filter.setValue(data, forKey: "inputMessage")

            filter.setValue("H", forKey: "inputCorrectionLevel")
            colorFilter.setValue(filter.outputImage, forKey: "inputImage")
            
//            CIColor(red: 1, green: 1, blue: 1)
            colorFilter.setValue(backgroundColor, forKey: "inputColor1") // Background white
            colorFilter.setValue(frontGroundColor, forKey: "inputColor0") // Foreground or the barcode RED
            guard let qrCodeImage = colorFilter.outputImage
                else {
                    return nil
            }
            //                let scaleX = imgQRCode.frame.size.width / qrCodeImage.extent.size.width
            //                let scaleY = imgQRCode.frame.size.height / qrCodeImage.extent.size.height
            let transform = CGAffineTransform(scaleX: 20, y: 20)
            
            
            if let output = colorFilter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        return nil
    }
}
