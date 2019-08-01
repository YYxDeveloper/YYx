//
//  Convert+Date.swift
//  IX
//
//  Created by 002 on 2019/2/12.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
extension Date{
    
}
extension Date {
    enum eachSecond:Int {
        case oneMin     = 60
        case fiveMin    = 300
        case tenMin     = 600
        case fifteenMin = 900
        case thirtyMin  = 1800
        case oneHour    = 3600
        case twoHours   = 7200
        case fourHours  = 14400
        case oneDay     = 86400
        case oneWeek    = 604800
        case oneMonth   = 2629746
    }
    enum eachMinute:Int {
        case fiveMins   = 5
        case thirtyMins = 30
        case oneHour    = 60
        case twoHours   = 120
        case aDay       = 1440
        case weekly     = 10080
        case oneMin     = 1
        case fifteenMins = 15
        case fourHours  = 240
        case monthly    = 43200
    }
    func convertToStamp() -> Double {
        return self.timeIntervalSince1970
    }
    func convertToString(dateFormat:String) -> String {
        
        let dateFormat = DateFormatter.giveMeGreenwichOriginDateFormatter(dateFormate: dateFormat)
        
        
        return dateFormat.string(from: self)
    }
     //MARK:  - yyyx
    
    
//
//    //MARK:  - Covert Current to UTC0
//    func convertCurrentDateToCurrentDateString(dateFormat:String) -> String {
//        return GreenwichOrigin.giveMeDateFormatter(dateFormate: dateFormat).string(from: self)
//    }
//
//    func convertCurrentDateToUTC0(dateFormat:String) -> String {
//         return DateFormatter.giveMeUTC0DateFormatter(dateFormate: dateFormat).string(from: self)
//    }
//    //MARK: - Convert UTC0 to Current
//    func convertUTC0DateToUTC0DateString(dateFormat:String) -> String {
//        return DateFormatter.giveMeUTC0DateFormatter(dateFormate: dateFormat).string(from: self)
//    }
//    func convertUTC0DateToCurrentDateString(dateFormat:String) -> String {
//        let currentFormatter = DateFormatter.giveMeCurrentDateFormatter(dateFormate: dateFormat)
//        return currentFormatter.string(from: self)
//    }

}
