//
//  CALayer+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/7/19.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit
extension CALayer{
    func editBordLayer(witchColor:UIColor,width:CGFloat) {
        self.borderColor = witchColor.cgColor
        self.borderWidth = width
       
    }
    func addBordLayer(witchColor:UIColor,width:CGFloat) {
        let theLayer = CALayer()
        theLayer.frame = self.bounds
        
        theLayer.borderColor = witchColor.cgColor
        theLayer.borderWidth = width
        self.addSublayer(theLayer)
    }
    func removeThislayer() {
        self.removeFromSuperlayer()
    }
}

