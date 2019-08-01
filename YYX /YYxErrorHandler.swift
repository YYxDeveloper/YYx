//
//  YYxErrorHandler.swift
//  asdada
//
//  Created by young lu on 2019/2/6.
//  Copyright © 2019 young lu. All rights reserved.
//

import Foundation
enum ErroTyperMsg:String {
    case OptionalError = "qqqq option is fail"
    case GuardError = "qqqq guard is fail"
    case ConvertError = "qqqq convert is error"
    case NoInsatantObjectError = "yyx there is no element"
    case doCatchError = "yyx do-catch fail"
    case OtherError = "qqqq OtherError"
    case hasNoFile = "qqqq hasNoFile"
}
struct YYxErrorHandler {
    
    private static var fileName:String{
        return #file.components(separatedBy: "/").last ?? ErroTyperMsg.OptionalError.rawValue
    }
    static func giveMeTroubleLocation<T>(_ message: T, file: String = #file, function: String = #function, line: Int = #line) -> String{
        return "\n\(fileName), \(function), \(line), \(Date())\n\(message)\n"
    }
    static func printFailMsg<T>(_ message: T, file: String = #file, function: String = #function, line: Int = #line) {
        
         Swift.print("\n\(fileName), \(function), \(line), \(Date())\n\(message)\n")
    }
    static func printGuardFail(function:String = #function,line:Int = #line){
         Swift.print("\n\(fileName), \(function), \(line),\n\(ErroTyperMsg.GuardError.rawValue)\n")
    }
    static func printOptionFail(function:String = #function,line:Int = #line){
        Swift.print("\n\(fileName), \(function), \(line),\n\(ErroTyperMsg.OptionalError.rawValue)\n")
    }
    static func printConvertErrorFail(function:String = #function,line:Int = #line){
        Swift.print("\n\(fileName), \(function), \(line),\n\(ErroTyperMsg.ConvertError.rawValue)\n")
    }
    static func printDoCatchErrorFail(function:String = #function,line:Int = #line){
        Swift.print("\n\(fileName), \(function), \(line),\n\(ErroTyperMsg.doCatchError.rawValue)\n")
    }
    static func addAseert(erroTyperMsg:ErroTyperMsg)  {
        assert(true, YYxErrorHandler.giveMeTroubleLocation(erroTyperMsg.rawValue))
    }
    static func printTestLog(withMark:String = "$$",witchStep:Int,message:String){
        Swift.print(withMark + witchStep.convertToString() + withMark + ":::" + message)
    }
    

}
