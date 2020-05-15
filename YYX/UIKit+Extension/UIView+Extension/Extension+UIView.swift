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
    /*拿到後：
           view.addSubview(v)
           v.translatesAutoresizingMaskIntoConstraints=false
           achor...
        */
       static func giveMeViewFromStroyBord(stroyBordName:String,VCstoryBoardID:String,viewTag:Int) -> UIView {
           
           let storyboard = UIStoryboard(name: stroyBordName, bundle: nil)
           let controller = storyboard.instantiateViewController(withIdentifier: VCstoryBoardID)
           let view = controller.view.searchTagView(tag: 9090)!
           
           
           return view
       }
     func searchTagView(tag:Int) -> UIView? {
        var theView:UIView?
        
        for view in self.subviews {
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
