//
//  CALayer+Animation.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/3.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit

extension CALayer{
    func addStrokeEndAnimation(duration:Double) {
//        let bezierAnimation = CABasicAnimation.init(keyPath: "strokeEnd")
          let bezierAnimation = CABasicAnimation.giveMeCABasicAnimation(duration: duration, keyPath: "strokeEnd")
        self.add(bezierAnimation, forKey: nil)
    }
}
extension CABasicAnimation{
    static func giveMeCABasicAnimation(duration:Double,keyPath:String)-> CABasicAnimation{
        
        let bezierAnimation = CABasicAnimation.init(keyPath: keyPath)
        bezierAnimation.duration = duration
        bezierAnimation.fromValue = 0
        bezierAnimation.toValue = 1
        bezierAnimation.isRemovedOnCompletion = false
        return bezierAnimation
    }
}
