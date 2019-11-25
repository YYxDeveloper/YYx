//
//  URLRequest+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/6/13.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation

extension URLRequest{
    mutating func setDefaultSetting(body:[String:String]?,witchHttpMethod:httpMethodString) {
        //method
        self.httpMethod = witchHttpMethod.rawValue
        
        //head
        self.setValue("Application/json", forHTTPHeaderField: "Content-Type")
       //body
        let httpBody = try? JSONSerialization.data(withJSONObject: body ?? [String:String](), options: [])
        self.httpBody = httpBody
        
        self.httpShouldHandleCookies = true
        
        
    }
}
