//
//  Animation+UIView.swift
//  BasicTableViewController
//
//  Created by 002 on 2019/2/26.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit
enum CABasicRotationKeyPath:String {
    case rotationX = "transform.rotation.x"
    case rotationY = "transform.rotation.y"
    case rotationZ = "transform.rotation.z"
    
}
enum CAKeyframeTranslationKeyPath:String {
    case transatiolnX = "transform.translation.x"
    case transatiolnY = "transform.translation.y"
    case transatiolnZ = "transform.translation.z"//看不出來
}
enum CAKeyframeScaleKeyPath:String {
    case transatiolnX = "transform.scale.x"
    case transatiolnY = "transform.scale.y"
    case transatiolnZ = "transform.scale.z"
}
enum CAKeyframeRotationKeyPath:String {
    case transatiolnX = "transform.rotation.x"
    case transatiolnY = "transform.rotation.y"
    case transatiolnZ = "transform.rotation.z"
}
extension UIView{
    func roundedButton(){
              let maskPath1 = UIBezierPath(roundedRect: bounds,
                  byRoundingCorners: [.topLeft , .topRight],
                  cornerRadii: CGSize(width: 20, height: 20))
              let maskLayer1 = CAShapeLayer()
              maskLayer1.frame = bounds
              maskLayer1.path = maskPath1.cgPath
              layer.mask = maskLayer1
          }
    func turnAround(duration:CFTimeInterval) {
           UIViewPropertyAnimator.runningPropertyAnimator(withDuration: duration/2, delay: 0, animations: {
               self.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
           }, completion: {data in
               UIViewPropertyAnimator.runningPropertyAnimator(withDuration: duration/2, delay: 0, animations: {
                   self.transform = CGAffineTransform(rotationAngle: CGFloat.pi * 2)
               })
           })
       }
    func fade(toPoint:CGPoint,isRepeat:Bool) {
//        let aa = CGAffineTransform.init(translationX: 100
//            , y: 0)
        self.transform = CGAffineTransform.init(translationX: toPoint.x
                    , y: toPoint.y)
        if isRepeat {
            UIView.animate(withDuration: 2, delay: 1, options: [.repeat], animations: {
                self.alpha = 0.5
                self.transform = .identity//特性轉換回到原本位置
            }, completion:  { (Bool) -> Void in
                print("finish")
            })

        }else{
            UIView.animate(withDuration: 2, delay: 1, options: [], animations: {
                self.alpha = 0.5
                self.transform = .identity//特性轉換回到原本位置
            }, completion:  { (Bool) -> Void in
                print("finish")
            })

        }
    }
    func addGradientLayer(witchColors:[CGColor]) {
    var gradientLayer: CAGradientLayer!
    gradientLayer = CAGradientLayer()
    gradientLayer.frame = self.bounds
    gradientLayer.colors = witchColors
    self.layer.addSublayer(gradientLayer)
    }
    func keepRandomShakeX() {
        var randomFromZeroToOne = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        let randomBool:Bool = arc4random_uniform(2) == 0
        if randomBool { randomFromZeroToOne = -randomFromZeroToOne }
        let degrees = CGFloat.random(in: -10...10)
        
        UIView.animate(withDuration: 0.05, delay: 0.0, options: [ .allowUserInteraction], animations: {
            self.transform = CGAffineTransform(translationX: randomFromZeroToOne, y: randomFromZeroToOne)
            self.transform = CGAffineTransform(translationX: degrees, y:self.frame.origin.y )
        }, completion: { turn in
            self.keepRandomShakeX()
        })
    }
    func keepRotation(keyPath:CABasicRotationKeyPath){
        let rotateAnimation = CABasicAnimation.init(keyPath:keyPath.rawValue )
                rotateAnimation.duration = 1
                rotateAnimation.toValue = 360
                rotateAnimation.repeatCount = Float.infinity
        self.layer.add(rotateAnimation, forKey: keyPath.rawValue)
    }

    func shake(keyPath:CAKeyframeTranslationKeyPath,isRepeat:Bool,duration:Double,shakeLevel:CGFloat) {
        let ViewWidth = self.frame.size.width
        let shakeLevel = ViewWidth * shakeLevel
        
            let shakeAnimation = CAKeyframeAnimation.init(keyPath: keyPath.rawValue)
            shakeAnimation.duration = duration
        if isRepeat {
            shakeAnimation.repeatCount = Float.infinity
        }
            shakeAnimation.values = [0,shakeLevel,-shakeLevel,0]
            self.layer.add(shakeAnimation, forKey: keyPath.rawValue)
    }
    func scaleOnce(scale:CGFloat,translation:CGPoint,duration:Double) {
          let moveRightTransform = CGAffineTransform.init(translationX: translation.x
            , y: translation.y)
          let scaleUpTransform = CGAffineTransform.init(scaleX: scale, y: scale)
        UIView.animate(withDuration: duration) {
            let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
            self.transform = moveScaleTransform        }
    }
    
}
