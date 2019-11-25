//
//  CAShapeLayer+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/3.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit

extension CAShapeLayer {
   static func giveMeCircleLayer(addView:UIView,strokeColor:UIColor) -> CAShapeLayer {
    guard addView.isSquare else { assertionFailure("不是正方形");return CAShapeLayer()}
    
        let border: CAShapeLayer = CAShapeLayer()
        let radius = addView.width
        let center = CGPoint.zero
        let size = CGSize(width: radius, height: radius)
        //線的顏色
        border.strokeColor = strokeColor.cgColor
        //設置填充色
        border.fillColor = UIColor.clear.cgColor
        border.path = UIBezierPath(ovalIn: CGRect(origin: center, size: size)).cgPath;
        
        return border
    }
}
