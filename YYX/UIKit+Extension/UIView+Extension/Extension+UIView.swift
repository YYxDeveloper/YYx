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
        return self.width == self.frame.height ? true : false
    }
    var width:CGFloat{
        return self.frame.size.width
    }
    var firstSuperView:UIView{
        if let theSuperView = self.superview {
            return theSuperView
        }else{
            return UIView()
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
        self.layer.cornerRadius = self.frame.height / 2
    }
    
}

