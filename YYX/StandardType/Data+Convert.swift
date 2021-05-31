//
//  Convert+Data.swift
//  asdada
//
//  Created by young lu on 2019/2/6.
//  Copyright © 2019 young lu. All rights reserved.
//

import Foundation
extension Data{
    static func convertStringToData(content:String) -> Data{
        guard  let data = content.data(using: String.Encoding.utf8) else {
           YYxErrorHandler.addAseert(erroTyperMsg:.OptionalError)
            return Data()
        }
        return data
    }
    func convertToUTF8String() -> String {
        return (String(data: self, encoding: .utf8))~!
    }
    func decodeJsonDatabyUtf8<T:Codable>(modelType:T.Type,compelete:(T)->()) {
        do {
            //PlistDictionaryExample
            
            
            // json 還沒轉型
            //refer : JSONDecoder() ;;ever
            let JsonStruct = try JSONDecoder().decode(modelType, from: self)
            
            compelete(JsonStruct)
        } catch  {
            print(error)
            
        }
    }
}
