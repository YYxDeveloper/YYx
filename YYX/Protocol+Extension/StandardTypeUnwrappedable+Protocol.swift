//
//  Unwrapped+Protocol.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/4/2.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit
protocol StandardTypeUnwrappedable {
    static var defaultValue: Self { get }
}

extension Optional where Wrapped: StandardTypeUnwrappedable {
    var unwrappedValue: Wrapped { return self ?? Wrapped.defaultValue }
}

extension Int: StandardTypeUnwrappedable {
    static var defaultValue: Int { return 0 }
}
extension Double: StandardTypeUnwrappedable {
    static var defaultValue: Double { return 0.0 }
}
extension Float: StandardTypeUnwrappedable {
    static var defaultValue: Float { return 0.0 }
}
extension String: StandardTypeUnwrappedable {
    static var defaultValue: String { return "" }
}

extension Array: StandardTypeUnwrappedable {
    static var defaultValue: Array<Element> { return [] }
}
