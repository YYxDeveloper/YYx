//
//  Extension+UITextField.swift
//  yyxUtilityTestProject
//
//  Created by 002 on 2018/11/13.
//  Copyright © 2018年 002. All rights reserved.
//

import Foundation
import UIKit

extension UITextField{
    func editDarkPlaceholder(PlaceholderText:String,PlaceholderTextColor:UIColor)  {
        self.attributedPlaceholder = NSAttributedString(string: PlaceholderText,
                                                             attributes: [NSAttributedString.Key.foregroundColor: PlaceholderTextColor])
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 1
    }
    func changePlaceholder(text:String,textColor:UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: text,
                                                        attributes: [NSAttributedString.Key.foregroundColor: textColor])
    }
}
