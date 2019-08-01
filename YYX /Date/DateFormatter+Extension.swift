//
//  DateFormatter+Extension.swift
//  CollectionViewWithStoryboard
//
//  Created by 002 on 2019/3/14.
//  Copyright © 2019年 frank.chen. All rights reserved.
//

import Foundation
extension DateFormatter{
    static let defaultFormat = "yyyy-MM-dd HH:mm:ss"
    static let defaultTimeFormat = "HH:mm:ss"
    static func giveMeGreenwichOriginDateFormatter(dateFormate:String)->DateFormatter{
        let uTC0DateFormatter = DateFormatter()
        uTC0DateFormatter.dateFormat = dateFormate
        uTC0DateFormatter.timeZone = TimeZone.init(identifier: UTCZone.zero.rawValue)
        return uTC0DateFormatter
    }
  
    static func giveMeCurrentDateFormatter(dateFormate:String) -> DateFormatter{
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone =  TimeZone.current//Set timezone that you want
        dateFormatter.dateFormat = dateFormate //Specify your format that you want
        return dateFormatter
    }
}
