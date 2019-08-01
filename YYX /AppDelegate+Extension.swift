//
//  AppDelegate+Extension.swift
//  YYxSwift_Button
//
//  Created by 002 on 2019/3/6.
//  Copyright © 2019年 young lu. All rights reserved.
//

import Foundation
import UIKit
extension AppDelegate{
    //加入於didFinishLaunchingWithOptions
     func embedNavigationController(witchVCStoryBoardID:String?) {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let nav1 = UINavigationController()
        let mainView = UIViewController.giveMeViewControllerFromStoryBoard(storyBoardName: "Main", storyBoardID:witchVCStoryBoardID ?? "ViewController" ) //ViewController = Name of your controller
        nav1.viewControllers = [mainView]
        self.window!.rootViewController = nav1
        self.window?.makeKeyAndVisible()
    }
    func launcFirsthVeiwControllerpPogrammatically(firstViewController:UIViewController) {
        window = UIWindow()
        window?.makeKeyAndVisible()
        
        window?.rootViewController = UINavigationController(rootViewController: firstViewController)
        
    }
    static func giveMeAppDelegate() -> AppDelegate{
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            return appDelegate
        }else{
            assert(false)
            return AppDelegate()
        }
        
    }
}
//"ViewController"
