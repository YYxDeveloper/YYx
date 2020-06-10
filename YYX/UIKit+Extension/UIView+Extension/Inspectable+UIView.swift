//
//  Inspectable+UIView.swift
//  YYxProvingGround
//
//  Created by Young Lu on 2020/6/10.
//  Copyright © 2020 002. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    @IBInspectable var radiusAngle: CGFloat {
           get {
               return self.layer.cornerRadius
           }
           set {
              self.layer.cornerRadius = newValue
           }
       }
    @IBInspectable var borderColor: UIColor {
          get {
              return UIColor(cgColor: self.layer.borderColor ?? UIColor.red.cgColor)
          }
          set {
              self.layer.borderColor = newValue.cgColor
          }
      }
      @IBInspectable var borderWidth: CGFloat {
            get {
                return self.layer.borderWidth
            }
            set {
                self.layer.borderWidth = newValue
            }
        }
}
