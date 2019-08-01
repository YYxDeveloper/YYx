//
//  OptionalType+Protocol.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/7.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit
import CoreData
// MARK: - PROTOCOL
protocol OptionalType { init() }

// MARK: - EXTENSIONS
extension String: OptionalType {}
extension Int: OptionalType {}
extension Double: OptionalType {}
extension Bool: OptionalType {}
extension Float: OptionalType {}
extension CGFloat: OptionalType {}
extension CGRect: OptionalType {}
extension UIImage: OptionalType {}
extension IndexPath: OptionalType {}
extension Date: OptionalType {}
extension UIFont: OptionalType {}
extension UIColor: OptionalType {}
extension UIViewController: OptionalType {}
extension UIView: OptionalType {}
extension NSMutableDictionary: OptionalType {}
extension NSMutableArray: OptionalType {}
extension NSMutableSet: OptionalType {}
extension NSEntityDescription: OptionalType {}
extension Int64: OptionalType {}
extension CGPoint: OptionalType {}
extension Data: OptionalType {}
extension NSManagedObjectContext: OptionalType {}

postfix operator ~!

//unwrapping values
postfix func ~!<T: OptionalType>( value: T?) -> T {
    guard let validValue = value else { YYxErrorHandler.printOptionFail();return T() }
    return validValue
}
