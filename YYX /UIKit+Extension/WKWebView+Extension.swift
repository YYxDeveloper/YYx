//
//  WKWebView+Extension.swift
//  YYxProvingGround
//
//  Created by 呂子揚 on 2019/8/5.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView{
    func changeBackgroundColor(toWitchColor:UIColor) {
        self.isOpaque = false
        self.backgroundColor = toWitchColor
    }
}
