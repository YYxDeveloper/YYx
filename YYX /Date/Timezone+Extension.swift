//
//  Timezone+Extension.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/4/10.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
extension TimeZone{
    static func giveMeAllTimezoneIdentifiers() -> [String] {
        return TimeZone.knownTimeZoneIdentifiers
    }
    static func giveMEGreenwichTimezone()->TimeZone{
        return TimeZone.init(identifier: UTCZone.zero.rawValue)!
    }
}
