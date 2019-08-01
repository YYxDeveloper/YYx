//
//  Extension+Alamofire.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/6/14.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import Alamofire

extension SessionManager{
    static func giveMedefaultSessionManager() -> Alamofire.SessionManager {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        configuration.timeoutIntervalForRequest = 120
        
        let manager = Alamofire.SessionManager(configuration: configuration)
        return manager
    }
}
