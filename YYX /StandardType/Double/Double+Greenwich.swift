//
//  Double+Greenwich.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/3/26.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
extension Double{
    func convertGreenwichStampToDate()-> Date {
        return Date(timeIntervalSince1970: TimeInterval(self))
    }
    func converGreenwichStampToString() -> String {
        let date = self.convertGreenwichStampToDate()
        let dateString = DateFormatter.giveMeGreenwichOriginDateFormatter(dateFormate: DateFormatter.defaultFormat).string(from: date)
        
        return dateString
    }
}
