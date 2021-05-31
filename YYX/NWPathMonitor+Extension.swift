//
//  NWPathMonitor+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/7/24.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import Network

extension NWPathMonitor{
     func checkNetworkStatus(){
        /**
         https://developer.apple.com/documentation/network/nwpath/status
         
         case unsatisfied
         The path is not available for use.
         
         case satisfied
         The path is available to establish connections and send data.
         
         case requiresConnection
         The path is not currently available, but establishing a new connection may activate the path.
         */
        
        //https://medium.com/p/58e3c6aa2832/responses/show
        self.pathUpdateHandler = { path in
            if path.status == .satisfied {
                print("connected")
            } else {
                print("no connection")
            }
        }
        self.start(queue: DispatchQueue.global())
        
        self.pathUpdateHandler = { path in
            if path.status == .satisfied {
                print("connected")
            } else {
                print("no connection")
            }
        }

    }
}
