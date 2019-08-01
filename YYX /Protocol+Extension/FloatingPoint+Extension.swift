//
//  FloatingPoint+Extension.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/4/30.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
extension FloatingPoint{
     static func giveMe360DegreePi<T:FloatingPoint>() -> T {
        return T.pi * T(2)
    }
}
