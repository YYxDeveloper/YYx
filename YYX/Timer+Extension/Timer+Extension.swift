//
//  Timer+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/23.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
extension Timer{
    static func wakeMeOnce(duration:Double,repeats:Bool,timeUp:@escaping voidClosur)  {
        Timer.scheduledTimer(withTimeInterval: duration, repeats: repeats) { _ in
            timeUp()
        }
    }
}
