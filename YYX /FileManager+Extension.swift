//
//  FileManager+Extension.swift
//  aaaaaw
//
//  Created by 002 on 2019/2/20.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit
enum fileType:String {
    case json,txt,plist
}
extension FileManager{
    func checkInfoPlistData() {
        func checkNSAllowsArbitraryLoads(InfoDic:[String:Any]) -> Bool{
            guard let values = InfoDic["NSAppTransportSecurity"] as? [String:Any] else {
                assert(false);return false
            }
            guard let arbitraryLaods = values["NSAllowsArbitraryLoads"] as? Bool else {
                assert(false);return false
            }
            return arbitraryLaods
        }
        let InfoDic = FileManager.default.giveMeInfoPlistDic()
        
        let hasNSAllowsArbitraryLoad = checkNSAllowsArbitraryLoads(InfoDic: InfoDic)
        print(hasNSAllowsArbitraryLoad)
        
    }
     //MARK: - to Bundle path
    func giveMeInfoPlistDic() -> [String:Any] {
        var propertyListForamt =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: AnyObject] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: "Info", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListForamt) as! [String:AnyObject]
            //            print(plistData)
            //            let aa = plistData["NSAppTransportSecurity"] as? [String:Any]
            //            print("aaaa\(aa!["NSAllowsArbitraryLoads"])")
//            self.checkInfoPlistData(InfoDic: plistData)
            return plistData
            
        } catch {
            print("Error reading plist: \(error), format: \(propertyListForamt)")
            return [String:Any]()
        }
    }
    func showInfoPlistData() {
        var propertyListForamt =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: AnyObject] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: "Info", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListForamt) as! [String:AnyObject]
            print(plistData)
//            let aa = plistData["NSAppTransportSecurity"] as? [String:Any]
            
        } catch {
            print("Error reading plist: \(error), format: \(propertyListForamt)")
        }
    }
    func decodeJsonDatabyUtf8FromBundle <T:Codable>(fileName:String,modelType:T.Type,compelete:@escaping (T)->()){
        do {
            let ss = try FileManager.default.readUTF8FileFromBundle(fileName).data(using: .utf8)
            ss~!.decodeJsonDatabyUtf8(modelType: modelType.self, compelete: {data in
                compelete(data)
            })
        } catch  {
            print(error)
        }
    }
    func readUTF8FileFromBundle(_ fileName: String) throws -> String{
        guard let pathForResource = Bundle.main.path(forResource: fileName, ofType: fileType.json.rawValue) else {
            YYxErrorHandler.printOptionFail();return String()
        }
        do {
            let content = try String(contentsOfFile: pathForResource, encoding: String.Encoding.utf8)
            return content
        } catch {
            throw error
        }
    }
    /**
      let arrData = try FileManager.default.readPlistArrayFromBundle(fileName: "PlistArrayExample")
     */
    func readPlistArrayFromBundle(fileName:String)->[Any]{
        let url = Bundle.main.url(forResource: fileName, withExtension: fileType.plist.rawValue)!
        
        do {
            let soundsData = try Data(contentsOf: url)
            let arr = try PropertyListSerialization.propertyList(from: soundsData, options: [], format: nil)
                as! [Any]
            return arr
        } catch  {
            return [Any]()
        }
        
    }
    
    /**
            let dicData = try  FileManager.default.readPlistDictionaryFromBundle(fileName: "PlistDictionaryExample")
     */
     func readPlistDictionaryFromBundle(fileName:String)->[String:AnyObject]{
        var propertyListForamt =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        var plistData: [String: AnyObject] = [:] //Our data
        let plistPath: String? = Bundle.main.path(forResource: fileName, ofType: fileType.plist.rawValue)! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)!
        do {//convert the data to a dictionary and handle errors.
            plistData = try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListForamt) as! [String:AnyObject]
            return plistData
            
        } catch {
            YYxErrorHandler.printDoCatchErrorFail()
            return Dictionary()
        }
    }
     //製這種文字檔會有\n
    func readHTMLFileToString(_ fileName: String) throws -> String {
       
        guard let pathForResource = Bundle.main.path(forResource: fileName, ofType: fileType.txt.rawValue) else {
            YYxErrorHandler.printOptionFail();return String()
        }
        do {
            let content = try String(contentsOfFile: pathForResource, encoding: String.Encoding.utf8)
            return content
        } catch {
            throw error
        }
    }
     //MARK: - to Sandbox path
     func writeUtf8TexttoSand(fileName:String,content:String,filetype:fileType){
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let fileURL = dir.appendingPathComponent("\(fileName).\(filetype.rawValue)")
            do {
                try content.write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {YYxErrorHandler.printDoCatchErrorFail()}
        }
    }
     func readUtf8TextFromSand(fileName:String,filetype:fileType) -> String {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = dir.appendingPathComponent("\(fileName).\(filetype.rawValue)")
            do {
                print(fileURL)
                let text2 = try String(contentsOf: fileURL, encoding: .utf8)
                return text2
            }
            catch {
                YYxErrorHandler.printDoCatchErrorFail()
               
            }
        }
         return String()
    }
     func writeDictionaryToSand(nameFile:String,witchDictionary:[String:AnyObject]){
        let docsBaseURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let customPlistURL = docsBaseURL.appendingPathComponent("\(nameFile).plist")
        print(customPlistURL.absoluteString)
        do  {
            let data = try PropertyListSerialization.data(fromPropertyList: witchDictionary, format: PropertyListSerialization.PropertyListFormat.binary, options: 0)
            do {
                try data.write(to: customPlistURL, options: .atomic)
                print("Successfully write \n \(FileManager.default.giveMesSandboxPath())")
            }catch{
                print(error.localizedDescription)
            }
        }catch{
            print(error.localizedDescription)
        }
    }
     func writeArrayToSand<T:Codable>(nameFile:String,witchArray:[T]) {
        let docsBaseURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let customPlistURL = docsBaseURL.appendingPathComponent("\(nameFile).plist")
        print(customPlistURL.absoluteString)
        // Swift Dictionary To Data.
        do  {
            let data = try PropertyListSerialization.data(fromPropertyList: witchArray, format: PropertyListSerialization.PropertyListFormat.xml, options: 0)
            do {
                try data.write(to: customPlistURL, options: .atomic)
                print("Successfully write \n \(FileManager.default.giveMesSandboxPath())")
            }catch{
                YYxErrorHandler.printDoCatchErrorFail();print(error.localizedDescription)
            }
        }catch (let err){
            print(err.localizedDescription)
        }
    }
     func giveMesSandboxPath() -> String {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        
    }
    func savePNGImage(image: UIImage,withName:String) -> Bool {
             guard let data = image.jpegData(compressionQuality: 1) ?? image.pngData() else {
                 return false
             }
             guard let directory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) as NSURL else {
                 return false
             }
             do {
                 try data.write(to: directory.appendingPathComponent("\(withName).png")!)
                 return true
             } catch {
                 print(error.localizedDescription)
                 return false
             }
         }
         func loadPNGImage(named: String) -> UIImage? {
             if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
                 return UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent(named).path)
             }
             return nil
         }

    // MARK: - about Jailbtoken
     func isJailbtoken() -> Bool {
        
        #if targetEnvironment(simulator)
        return true
        #else
        
        // Check 1 : existence of files that are common for jailbroken devices
        if FileManager.default.fileExists(atPath: "/Applications/Cydia.app")
            || FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/MobileSubstrate.dylib")
            || FileManager.default.fileExists(atPath: "/bin/bash")
            || FileManager.default.fileExists(atPath: "/usr/sbin/sshd")
            || FileManager.default.fileExists(atPath: "/etc/apt")
            || FileManager.default.fileExists(atPath: "/private/var/lib/apt/")
        {
            return true
        }
        // Check 2 : Reading and writing in system directories (sandbox violation)
        let stringToWrite = "Jailbreak Test"
        do
        {
            try stringToWrite.write(toFile:"/private/JailbreakTest.txt", atomically:true, encoding:String.Encoding.utf8)
            //Device is jailbroken
            return true
        }catch{
            return false
        }
        
        #endif
    }
}
