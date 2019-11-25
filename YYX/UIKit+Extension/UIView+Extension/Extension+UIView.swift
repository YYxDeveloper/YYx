//
//  Extension+UIView.swift
//  dayPart
//
//  Created by young lu on 2018/10/25.
//  Copyright © 2018年 young lu. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    var isSquare:Bool{
        return self.width == self.height ? true : false
    }
    var height:CGFloat{
        return self.frame.size.height
    }
    var width:CGFloat{
        return self.frame.size.width
    }
    var firstSuperView:UIView{
        if let theSuperView = self.superview {
            return theSuperView
        }else{
            YYxErrorHandler.printOptionFail()
            return UIView()
        }
    }
    
    @IBInspectable var radiusAngle: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
           self.layer.cornerRadius = newValue
        }
    }
    static func giveMeBlurView(frame:CGRect) -> UIView {
        let view = UIView(frame: frame)
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        view.addSubview(blurEffectView)
        
        return view
    }
     func searchTagView(with parentView:UIView,tag:Int) -> UIView? {
        var theView:UIView?
        
        for view in parentView.subviews {
            guard view.tag == tag else{continue}
            
            theView = view
        }
        return theView
    }
    func setAutoresizingFalse() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    func becomeCircle() {
        self.layer.cornerRadius = self.height / 2
    }
    func addCircleLayer(strokeColor:UIColor,anitmation:Bool,duration:Double?) {
        let layer = CAShapeLayer.giveMeCircleLayer(addView: self, strokeColor: strokeColor)
        if anitmation {
            layer.addStrokeEndAnimation(duration: duration!)
        }
        self.layer.addSublayer(layer)
    }
    
}
