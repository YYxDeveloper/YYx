//
//  Global.swift
//  IX
//
//  Created by 002 on 2019/3/20.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
class Global {
    static let shared = Global()
    let cache = NSCache<AnyObject, AnyObject>()
}
