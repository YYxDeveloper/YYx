//
//  theCryptoSwift .swift
//  YYxProvingGround
//
//  Created by young.lu on 2019/10/31.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import CryptoSwift

extension String {
    
    /// AES加密
    ///
    /// - Parameters:
    ///   - key: key
    ///   - iv: iv
    /// - Returns: String
    func aesEncrypt(key: String, iv: String) -> String? {
        var result: String?
        do {
            // 用UTF8的编碼方式將字串轉成Data
            let data: Data = self.data(using: String.Encoding.utf8, allowLossyConversion: true)!
            
             let aecEnc = try AES(key: key, iv: iv)
            // 用AES的方式將Data加密
//            let aecEnc: AES = try AES(key: key, iv: iv, blockMode: .CBC)
            let enc = try aecEnc.encrypt(data.bytes)
            
            // 使用Base64編碼方式將Data轉回字串
            let encData: Data = Data(bytes: enc, count: enc.count)
            result = encData.base64EncodedString()
        } catch {
            print("\(error.localizedDescription)")
        }
        
        return result
    }
    
    /// AES解密
    ///
    /// - Parameters:
    ///   - key: key
    ///   - iv: iv
    /// - Returns: String
    func aesDecrypt(key: String, iv: String) -> String? {
        var result: String?
        do {
            // 使用Base64的解碼方式將字串解碼後再轉换Data
            let data = Data(base64Encoded: self, options: Data.Base64DecodingOptions(rawValue: 0))!
            
            // 用AES方式將Data解密
             let aesDec = try AES(key: key, iv: iv)
//            let aesDec: AES = try AES(key: key, iv: iv, blockMode: .CBC)
            let dec = try aesDec.decrypt(data.bytes)
            
            // 用UTF8的編碼方式將解完密的Data轉回字串
            let desData: Data = Data(bytes: dec, count: dec.count)
            result = String(data: desData, encoding: .utf8)!
        } catch {
            print("\(error.localizedDescription)")
        }
        
        return result
    }
}
