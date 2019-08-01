//
//  UINib+Extension.swift
//  CollectionViewWithStoryboard
//
//  Created by 002 on 2019/3/13.
//  Copyright © 2019年 frank.chen. All rights reserved.
//

import Foundation
import UIKit
extension UINib{
    static func giveMeTheNib(witchNibName:String) -> UINib {
        return  UINib(nibName: witchNibName, bundle: nil)
    }
}
