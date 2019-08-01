//
//  NSCache+Extension.swift
//  IX
//
//  Created by 002 on 2019/3/20.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
let globalCache = NSCache<AnyObject, AnyObject>()
extension NSCache{
    @objc func checkObject(keyName:String) -> Bool {
        return globalCache.object(forKey: keyName as AnyObject) != nil ? true:false
    }
}
