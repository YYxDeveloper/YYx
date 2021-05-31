//
//  PageViewController+Extension.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/6.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit

extension UIPageViewController{
    static let id = "PageViewController"
    static func giveMeAPageViewController() -> UIViewController {
        
         let pVC = UIViewController.giveMeViewControllerFromStoryBoard(storyBoardName: String(describing: id), storyBoardID:id )
        return pVC
    }
}
