//
//  UIScrollView+Extension.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/4/3.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit

extension UIScrollView{
    enum indicator {
        case horizontalIndicator
        case VerticalIndicator
        case both
    }
    func hideIndicator(witchIndicator:indicator) {
        switch witchIndicator {
        case .horizontalIndicator:
            self.showsHorizontalScrollIndicator = false
        case .VerticalIndicator:
            self.showsVerticalScrollIndicator = false
        case .both:
            self.showsHorizontalScrollIndicator = false
            self.showsVerticalScrollIndicator = false
        }
    }
    func scrollToTop(animated: Bool) {
        setContentOffset(CGPoint(x: 0, y: -contentInset.top),
                         animated: animated)
    }
    
    func scrollToBottom(animated: Bool) {
        setContentOffset(CGPoint(x: 0, y: CGFloat.greatestFiniteMagnitude),
                         animated: animated)
    }
}
