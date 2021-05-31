//
//  Extension.swift
//  IX
//
//  Created by 002 on 2019/2/13.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
//case "CHINESE":
//return "^[\\u4E00-\\u9FA5]+$"
//case "PASSWORD":
//return "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[\\s\\S]{6,18}$"
extension NSPredicate{
    static func giveMePrePredicatePreFixString(withcProperty:String,prefix:String)->NSPredicate{
        return NSPredicate(format: "\(withcProperty) like '\(prefix)*'")
    }
    enum expressionContent:String {
        case EMAIL    = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        case CHINESE  = "^[\\u4E00-\\u9FA5]+$"
        case PASSWORD = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[\\s\\S]{6,18}$"
        //目前注册输入 qwer12345678901234  并没有被提示   要输入 6~14位数字或字母
        case EngXInt  = "[0-9|a-z|A-Z]{6,14}"
        
        //https://stackoverflow.com/questions/273141/regex-for-numbers-only
        case NumberOnly = "^\\d+$"
    }
    func isMatchRule(of expression:expressionContent ,witchContent:String) -> Bool {
        let redicate = NSPredicate(format: "SELF MATCHES %@", expression.rawValue)
        if redicate.evaluate(with: witchContent) {
            return true
        }else{
            return false
        }
    }
}
