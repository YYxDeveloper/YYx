//
//  String+Extension.swift
//  IX
//
//  Created by 002 on 2019/3/7.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
enum UTCZone:String{
    case zero = "UTC"
    case plus8 = "UTC+8"
}
extension String{
    func replaceChartTo1Blank(changeChart:String) -> String{
        return self.replacingOccurrences(of: changeChart, with: " ")
    }
    func giveMeRangeOfString(theStartIndex:Int,theEndIndex:Int) -> String {
        guard theEndIndex <= self.count && theStartIndex > 0 && theEndIndex > 0 else {
            YYxErrorHandler.printGuardFail() ;return String()
        }
        
        let startIndex = self.index(self.startIndex, offsetBy: theStartIndex)
        let endIndex = self.index(self.startIndex, offsetBy: theEndIndex)
        return self[startIndex ..< endIndex].convertToString()
    }
    func removeFromBehind(count:Int) -> String {
        return String(self.dropLast(count))
    }
    static func compare2Stamp(format:String,timeStr1:String,timeStr2:String) -> String {
        let stamp1 = timeStr1.convertToGreenwichStamp(format: format).convertInt()
        let stamp2 = timeStr2.convertToGreenwichStamp(format: format).convertInt()
        
        
        return stamp1 > stamp2 ? timeStr1:timeStr2
        
    }
}
extension String{
    //MARK: - GiveME
    static func giveMeRandomUUID() -> String{
        return UUID().uuidString
    }
}
