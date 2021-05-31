//
//  Alert+UIViewController.swift
//  yyxUtilityTestProject
//
//  Created by 002 on 2018/11/8.
//  Copyright © 2018年 002. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController{
    func showAlertSheet(title:String,message:String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.actionSheet)
        
        let alertAction1 = UIAlertAction(title: "有效", style: UIAlertAction.Style.default, handler: {(actionSheet: UIAlertAction!) in
            print("xxx1")
        })
        
        let alertAction2 = UIAlertAction(title: "已使用", style: UIAlertAction.Style.default, handler: nil)
        
        let allAction = UIAlertAction(title: "所有", style: UIAlertAction.Style.cancel, handler: nil)
        
        
        alertController.addAction(alertAction1)
        alertController.addAction(alertAction2)
        alertController.addAction(allAction)
        
        let popPresenter = alertController.popoverPresentationController
        popPresenter?.sourceView = self.view
        popPresenter?.barButtonItem = self.navigationItem.rightBarButtonItem
        self.present(alertController, animated: true, completion: nil)
    }
    func warningAlert(title:String,message:String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
}
