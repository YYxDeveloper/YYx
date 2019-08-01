//
//  numeric.swift
//  IX
//
//  Created by 002 on 2019/2/20.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
class numeric {
   static  func giveMeNumericString<num:Numeric>(with howManyDot:Int,theNum:num) -> String{
    guard let num = theNum as? CVarArg else {
        YYxErrorHandler.printGuardFail();return String()
    }
        return  String(format: "%.\(howManyDot)f", num)
    }
    static  func giveMe2DotNumericString<num:Numeric>(theNum:num) -> String{
        guard let num = theNum as? CVarArg else {
            YYxErrorHandler.printGuardFail();return String()
        }
        return  String(format: "%.2f", num)
    }

    static  func giveMeNumericString<num:Numeric>(theNum:num) -> String{
        return  String(format: "\(theNum)")
    }

}
