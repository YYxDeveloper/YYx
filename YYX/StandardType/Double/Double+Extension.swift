//
//  Double+Extension.swift
//  IX
//
//  Created by 002 on 2019/2/21.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
import UIKit
extension Double{
    var randomRation:Double{
        return Double.random(in: 0...1)
    }
    func convertCGFloat() -> CGFloat {
        return CGFloat(self)
    }
    func convertInt() -> Int {
        return Int(self)
    }
    
    func convertStampToCurrentString(dateFormat: String) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        let dateString = DateFormatter.giveMeCurrentDateFormatter(dateFormate: dateFormat).string(from: date)
        
        return dateString
    }
    var convertDegreeString: String {
        return String(format: "%.0f°",self)
    }
}
