//
//  ProgressingDashedLineCircleView.swift
//  HealthKitTut
//
//  Created by Meenakshi Phadatare on 10/22/17.
//  Copyright © 2017 Shankar Phadatare. All rights reserved.
//

import UIKit
/**
 https://github.com/MilanistaDev/DrawCircleLine
 
 */
class ProgressingDashedLineCircleView: UIView {
    
    static let sharedInstance = ProgressingDashedLineCircleView()

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var value = 10000.0;
    var maxValue = 10000.0;
    
    
    func drawDhashedLineCircle()  {
        
        self.layoutIfNeeded()
        UIView.animate(withDuration: 1.0) {
            
            // To add bottom space set the angles like below
            //            let startAngle = 135.0;
            //            let endAngle = 270.0
            //
            let startAngle = 90.00;
            let endAngle = 360.00
            
            var percent = self.value/self.maxValue
            
            let angle_90 = Measurement(value: startAngle, unit: UnitAngle.degrees)
                .converted(to: .radians).value
            
            if percent > 1.0
            {
                percent = 1.0
            }
            
            let endAngleValue = ((percent)*endAngle)+startAngle
            
            
            
            let angle_fillingAngle = Measurement(value: endAngleValue, unit: UnitAngle.degrees)
                .converted(to: .radians).value
            
            let endAngleValue1 = ((1.0)*endAngle)+startAngle
            
            let angle_fillingAngle1 = Measurement(value: endAngleValue1, unit: UnitAngle.degrees)
                .converted(to: .radians).value
            
            self.drawCircleUsingStartAndEndAngle(angle_90, angle_fillingAngle1,color: .lightGray, animate:false)
            
            self.drawCircleUsingStartAndEndAngle(angle_90, angle_fillingAngle, color: .red, animate: true)
        }
    }
    
   
    
    fileprivate func drawCircleUsingStartAndEndAngle(_ angle_90: Double, _ angle_360: Double, color:UIColor,animate:Bool) {
        
        //let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200,y: 300), radius: CGFloat(100), startAngle: CGFloat(M_PI_2), endAngle:CGFloat(M_PI * 3 * percentage + M_PI_2), clockwise: true)
        
       
       
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: self.bounds.midX,y: self.bounds.midY), radius: CGFloat(100), startAngle: CGFloat(angle_90), endAngle:CGFloat(angle_360), clockwise: true)
        
        
        //let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200,y: 300), radius: CGFloat(100), startAngle: CGFloat(Double.pi/2), endAngle:CGFloat(Double.pi*2*actualPercentage + Double.pi/2), clockwise: true)
        
        //let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200,y: 300), radius: CGFloat(100), startAngle: CGFloat(-M_PI_2), endAngle:CGFloat(M_PI * 2 * percentage - M_PI_2), clockwise: true)
        
        
        //let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200,y: 300), radius: CGFloat(100), startAngle: CGFloat(angle_90), endAngle:CGFloat(angle_360 * 2 * percentage - angle_90/2), clockwise: true)
        
        // let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200,y: 300), radius: CGFloat(100), startAngle: CGFloat(Double.pi/2), endAngle:CGFloat(Double.pi * 2 * 0.9 - .pi/2), clockwise: true)
        
        //let circlePath = UIBezierPath(arcCenter: CGPoint(x: 100,y: 100), radius: CGFloat(20), startAngle: CGFloat(-M_PI_2), endAngle:CGFloat(M_PI * 2 * percentage - M_PI_2), clockwise: true)
        
        
        //let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200,y: 300), radius: CGFloat(100), startAngle: CGFloat(angle_90), endAngle:CGFloat(angle_360), clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        //change the fill color
        shapeLayer.fillColor = UIColor.clear.cgColor
        //you can change the stroke color
        shapeLayer.strokeColor = color.cgColor
        //you can change the line width
        shapeLayer.lineWidth = 20
        shapeLayer.lineDashPattern = [2]
        
        if animate {
            let pathAnimation = CABasicAnimation(keyPath: "strokeEnd")
            pathAnimation.fromValue = 0.0
            pathAnimation.toValue = 1.0
            pathAnimation.duration = 2.0   // time in seconds.
            shapeLayer.add(pathAnimation, forKey: "strokeEnd")
        }
        
        
        self.layer.addSublayer(shapeLayer)
    }
    func StartCounting(){
        self.value = 1000.0
        self.maxValue = 1000.0
        self.drawDhashedLineCircle()
    }

}
