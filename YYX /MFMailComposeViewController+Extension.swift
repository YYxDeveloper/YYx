//
//  MFMailComposeViewController+Extension.swift
//  YYxProvingGround
//
//  Created by young.lu on 2019/8/12.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import MessageUI
extension MFMailComposeViewController{
    static func giveMeMFMailComposeViewControllerWithConfigration() -> MFMailComposeViewController{
        let mailComposeVC = MFMailComposeViewController()
        
        func changePreferredSendingEmailAddress(){
            /*
             https://www.jianshu.com/p/4bdfc6adfdd3 在郵件中，一般不對發件人進行設置。這是因為郵件將使用設備的默認登錄賬戶作為發件人。如果需要要修改發件人，可以使用setPreferredSendingEmailAddress(_:)方法。該方法可以設置“發件人”首選郵件地址。其語法形式如下：
             */
//            mailComposeVC.setPreferredSendingEmailAddress("sender@gmail.com")
            
            
        }
        changePreferredSendingEmailAddress()
        //字串需要符合RFC5322
        mailComposeVC.editConfigration(Recipients: ["yyxdev@gmail.com","uuu@aa.uu","ccc"], CcRecipients: ["notExsit1Mail@Gmail.com"], BccRecipients: nil, subject: nil, body: "Hello mail")
        
        
        return mailComposeVC
    }
    func editConfigration(Recipients:[String]?,CcRecipients:[String]?,BccRecipients:[String]?,subject:String?,body:String?)  {
        
        func checkValidate(){
        
           _ = Recipients?.enumerated().map({
                   (index, recipient) in
                print("Recipients[\(index)] isEmailForma = \(recipient.isEmailFormat())")
           
            })
            _ = CcRecipients?.enumerated().map({
                (index, recipient) in
                print("CcRecipients[\(index)] isEmailForma = \(recipient.isEmailFormat())")
                
            })
            _ = BccRecipients?.enumerated().map({
                (index, recipient) in
                print("BccRecipients[\(index)] isEmailForma = \(recipient.isEmailFormat())")
                
            })
        }
        checkValidate()
        self.setToRecipients(Recipients)
        self.setCcRecipients(CcRecipients)
        self.setBccRecipients(BccRecipients)
        self.setSubject(subject~!)
        self.setMessageBody(body~!, isHTML: false)
    }
}
