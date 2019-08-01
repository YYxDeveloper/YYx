//
//  Extension+UIView.swift
//  IX
//
//  Created by 002 on 2018/11/6.
//  Copyright © 2018年 Infinox. All rights reserved.
//

import Foundation
import UIKit
extension UINavigationController{
    func pushSegue(by identify:String) {
         self.performSegue(withIdentifier: identify, sender: self)
    }
    func pushViewController(viewController: UIViewController,
                            animated: Bool,
                            completion: (() -> Void)?) {
        
        pushViewController(viewController, animated: animated)
    }
    func maskStatusBar()  {
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        self.view.backgroundColor = UIColor.clear
    }
}
