//
//  StoryBoard+Extension.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/4/22.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit
extension UIStoryboard{
    static func giveMeMainStoryboard() -> UIStoryboard{
        return  UIStoryboard(name: "Main", bundle: nil)
    }
    static func giveMeStoryBoard(storyBordFileName:String) -> UIStoryboard{
       return UIStoryboard(name: storyBordFileName, bundle: nil)
    }
}
