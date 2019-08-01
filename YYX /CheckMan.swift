//
//  CheckMan.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/6/12.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation

class CheckMan {
    static func checkDefaultRequestData(urlString:String, completion:@escaping ((_ data:Data)->())) {
        let defaultSession = URLSession(configuration: .default)
        
        var dataTask: URLSessionDataTask?
        dataTask?.cancel()
        
        dataTask = defaultSession.dataTask(with: URL(string: urlString)!) { data, response, error in
            defer { dataTask = nil }
            guard let data = data, let response = response as? HTTPURLResponse else {
                if let error = error{
                    YYxErrorHandler.printFailMsg(error.localizedDescription)
                }
                return
            }
            if response.statusCode == 200 {}
            completion(data)
            
            
        }
        dataTask?.resume()
    }
}
