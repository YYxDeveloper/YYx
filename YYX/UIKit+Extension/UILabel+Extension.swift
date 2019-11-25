//
//  UILabel+Extension.swift
//  IX
//
//  Created by 002 on 2019/2/23.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
import UIKit

extension UILabel{
    var fontWidth:CGFloat{
        let count = CGFloat((self.text?.count ?? IntZero))
        let fontSize = self.font.pointSize
        print("xxx::\(String(describing: self.text))")
        return count * fontSize
    }
    func editCornerRadius(redius:CGFloat)  {
//        self.eventTitle.layer.cornerRadius = 10
//            self.eventTitle.layer.backgroundColor = UIColor.yellow.cgColor
       
        
        self.backgroundColor = .clear
        
        self.layer.cornerRadius = redius
        
    }
    
}
