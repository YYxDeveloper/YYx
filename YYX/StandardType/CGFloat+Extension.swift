//
//  CGFloat+Extension.swift
//  IX
//
//  Created by 002 on 2019/2/21.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
import CoreGraphics
extension CGFloat{
    func convertDouble() -> Double {
        return Double(self)
    }
    func convertInt() -> Int {
        return Int(self)
    }
    func convertToPercentStringWithoutDecimal() -> String {
        guard self < 1 && self > 0 else {
            YYxErrorHandler.printGuardFail()
            return String();
        }
        return String(format: "%.0f",self * 100)
     }
    static func giveMeMultiplierValue() -> CGFloat {
        return CGFloat.random(in: 0...1)
    }
}
