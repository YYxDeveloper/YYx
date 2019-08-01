//
//  UIColor+Extension.swift
//  IX
//
//  Created by 002 on 2019/2/21.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
import UIKit
extension UIColor{
    static func giveRGBColor(red:CGFloat,green:CGFloat,blue:CGFloat,opcity:Double)->UIColor{
        return UIColor(red: red/RGB_MAX, green: green/RGB_MAX, blue: blue/RGB_MAX, alpha: 0.3)
    }
    func convertColorToImage() -> UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setFillColor(self.cgColor)
        context?.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }

}
