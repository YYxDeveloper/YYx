//
//  Int+Extension.swift
//  IX
//
//  Created by 002 on 2019/2/21.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
import UIKit
extension Int{
    var isUnsigned:Bool{return self>0 ? true:false}
    func convertCGFloat() -> CGFloat {
        return CGFloat(self)
    }
    func convertDouble() -> Double {
        return Double(self)
    }
    func convetToLeadingZeroString() -> String{
        return String(format: "%02d", self)
    }
    func convertToString() -> String {
        return String(self)
    }
    
}
