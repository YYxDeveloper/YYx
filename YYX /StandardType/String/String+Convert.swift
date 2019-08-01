//
//  String+Convert.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/3/24.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
extension String{
     //MARK: Convert Date
    func convertToCurrentDate(format:String) -> Date {
        let currentString = self.convertToGreenwichStamp(format: format).convertStampToCurrentString(dateFormat: format)
        let formatter = DateFormatter.giveMeGreenwichOriginDateFormatter(dateFormate: format)
        return formatter.date(from: currentString) ?? Date()
    }
    func convertToGreenwichDate(format:String) -> Date {
        let localDateFormatter = DateFormatter()
        localDateFormatter.dateFormat = format
        
        return localDateFormatter.date(from: self) ?? Date()
    }
    //MARK: Convert Number Value
    func convertToDouble() -> Double {
        return Double(self) ?? Double.defaultValue
    }
    func convertToFloat() -> Float {
        return Float(self) ?? Float.defaultValue
    }
    
    
}

extension String{
    //MARK: Convert IXFormatDate
    func convertCurrentDateFormatToIXFormatUTP0Date() -> Date {
        let localDateFormatter = DateFormatter.giveMeCurrentDateFormatter(dateFormate: DateFormatter.defaultFormat)
        localDateFormatter.dateFormat = DateFormatter.defaultFormat
        
        return localDateFormatter.date(from: self) ?? Date()
    }

}
