//
//  Encodable+Extension.swift
//  YYxProvingGround
//
//  Created by young.lu on 2019/11/13.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
extension Encodable {
    func toJSONData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
