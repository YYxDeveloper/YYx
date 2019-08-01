//
//  String+Greenwich.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/3/26.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
extension String{
    func convertToGreenwichStamp(format:String) -> Double {
        let uTC0Date = DateFormatter.giveMeGreenwichOriginDateFormatter(dateFormate: format).date(from: self) ?? Date()
        return  uTC0Date.timeIntervalSince1970
    }
}
