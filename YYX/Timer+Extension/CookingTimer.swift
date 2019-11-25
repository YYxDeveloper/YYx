//
//  CookingTimer.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/4/1.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
class CookingTimer {
    
    let countingTime = Observable<(String,Double)>(value: (CookingTimer.atFirstTimeString,0.0))
    
    let sixtyConst = 60
    var isStarted = false
    var theTimer : Timer?
    var milSec          = 0
    var second          = 0
    var min             = 0
    var hour            = 0
    var totalSec        = 0.0
    
    static let atFirstTimeString = "00:00:00"
  
    
    func reset() {
        isStarted = false
        theTimer?.invalidate()
        milSec      = 0
        second      = 0
        min         = 0
        hour        = 0
        
        
    }
    func pause() {
        isStarted = false
        theTimer?.invalidate()
        theTimer = nil
    }
    func start() {
        guard isStarted == false else {return}
        theTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timeRepeat(_:)), userInfo: nil, repeats: true)
        isStarted = true
    }
    @objc func timeRepeat(_ time:Timer) -> Void {
        func calculateTime_2(){
           
             milSec = milSec + 1
            if milSec == 99 {
                totalSec = totalSec + 1
                second = second + 1
                milSec = 0
                
            }
            if second == 60 {
               min = min + 1
               second = 0
            }
            if min == 60 {
               hour = hour + 1
               min = 0
            }
        }
        func showTheTime_1(){
           let countStr = "\(hour.convetToLeadingZeroString()):\(min.convetToLeadingZeroString()):\(second.convetToLeadingZeroString()):\(milSec.convetToLeadingZeroString())"
            self.countingTime.value = (countStr,totalSec)
//            print(currentTimeString)
        }
        showTheTime_1()
        calculateTime_2()
        
        
        
    }
    func note() {
        //         //链接：https://www.jianshu.com/p/8fb1f010f3f6
        //        if #available(iOS 10.0, *) {
        //            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
        //
        //                self.countDown()
        //            })
        //        } else {
        //            // Fallback on earlier versions
        //
        //            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        //        }
        
        
    }
}
