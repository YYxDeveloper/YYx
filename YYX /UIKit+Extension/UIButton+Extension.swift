//
//  UIButton+Extension.swift
//  IX
//
//  Created by 002 on 2019/2/19.
//  Copyright © 2019年 IXCG. All rights reserved.
//

import Foundation
import UIKit
extension UIButton{
    func clickSelf() {
        self.sendActions(for: .touchUpInside)
    }
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        guard self.buttonType == .custom else {
            YYxErrorHandler.printFailMsg("yyx  uibutton must be .custom type");return
        }
        self.setBackgroundImage(color.convertColorToImage(), for: state)
    }
}
