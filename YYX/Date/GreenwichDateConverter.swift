//
//  YYxDate.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/3/26.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
enum timeZone {
    case GMT
    case current
}
class GreenwichDateConverter {
    
    private let initTimeZone:timeZone
    let dateFormatter :DateFormatter
    
    let originStamp:Double
    let originDateString:String
    let originDate:Date
    
    let convertedDateString:String
    let convertedtDate:Date
    
    
    var isGreenwichTimeZone:Bool{
        get{
            switch self.initTimeZone {
            case .GMT:
                return false
            case .current:
                return true
            }
        }
    }

    init(initDateString:String,format:String,initTimeZone:timeZone) {
        self.initTimeZone  = initTimeZone
         self.dateFormatter = DateFormatter.giveMeGreenwichOriginDateFormatter(dateFormate: format)
       
        let uTC0Date = self.dateFormatter.date(from: initDateString)
        self.originStamp = uTC0Date!.convertToStamp()
        self.originDateString = initDateString
        self.originDate = uTC0Date!
        var interval = Double()
        
        switch  self.initTimeZone {
        case .GMT:
            interval = TimeInterval(TimeZone.current.secondsFromGMT() - TimeZone.giveMEGreenwichTimezone().secondsFromGMT())
           
        case .current:
              interval = TimeInterval(TimeZone.giveMEGreenwichTimezone().secondsFromGMT() - TimeZone.current.secondsFromGMT())
        }
       
        
        if let convertedDate = uTC0Date?.addingTimeInterval(interval) {
            self.convertedtDate = convertedDate
            self.convertedDateString  = self.dateFormatter.string(from: convertedDate)
        }else{
            self.convertedtDate  = Date()
            self.convertedDateString = String()
        }
    }
}
