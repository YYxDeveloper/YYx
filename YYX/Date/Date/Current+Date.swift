//
//  DateAndTime.swift
//  CollectionYYxExample
//
//  Created by young lu on 2018/10/7.
//  Copyright © 2018年 young lu. All rights reserved.
//

import Foundation

extension Date{
  
    static let  currentYear = Calendar.current.component(.year, from: Date())
    static let  currentMonth =  Calendar.current.component(.month, from: Date())
    static let  currentDay =  Calendar.current.component(.day, from: Date())
    static let  currentDate:Date =  Calendar.current.date(from: DateComponents(year: Date.currentYear, month: Date.currentMonth)) ?? Date()
    static let  currentTimezone = TimeZone.current
 
    static func howManyCurrentMonthDays()-> Int{
        let range =  Calendar.current.range(of: .day, in: .month, for: Date.currentDate)
        let numDays = range?.count
        return numDays ?? 0
    }
    static func getDayOfDate1(year:Int,month:Int) -> Int {
       
        let dateComponents = DateComponents(year: year ,month: month)
        
        guard let date = Calendar.current.date(from: dateComponents) else{
           YYxErrorHandler.printOptionFail()
            return 0}
        return Calendar.current.component(.weekday, from: date)
    }
    static func getCurrentWeekDayOfDate1() -> Int{
        let dateComponents = DateComponents(year: Date.currentYear ,month: Date.currentMonth)
        
        guard let date = Calendar.current.date(from: dateComponents) else{
           YYxErrorHandler.printOptionFail()
            return 0}
        return Calendar.current.component(.weekday, from: date)
    }
    static func giveMeCurrentDateString(format:String) -> String{
        let now = Date()
        
        let formatter = DateFormatter()
        
        formatter.timeZone = TimeZone.current
        
        formatter.dateFormat = format
       
        return formatter.string(from: now)
        
    }
    static func giveMeCurrentGreenwichDateString(format:String) -> String{
        return DateFormatter.giveMeGreenwichOriginDateFormatter(dateFormate: format).string(from: Date())
    }
    static func convertDayNumberToString(dayNumber:Int) -> String {
        enum DayName:String {
            case Sun,Mon,Tue,Wen,Tur,Fri,Sat
        }
        switch dayNumber {
        case 1:
            return DayName.Sun.rawValue
        case 2:
            return DayName.Mon.rawValue
        case 3:
            return DayName.Tue.rawValue
        case 4:
            return DayName.Wen.rawValue
        case 5:
            return DayName.Tur.rawValue
        case 6:
            return DayName.Fri.rawValue
        case 7:
            return DayName.Sat.rawValue
        default:
            YYxErrorHandler.addAseert(erroTyperMsg:.OptionalError)
            return EMPTY_STR
        }
    
    
    }
}
