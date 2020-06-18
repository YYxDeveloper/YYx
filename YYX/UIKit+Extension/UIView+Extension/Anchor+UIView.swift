//
//  Anchor+UIView.swift
//  YYxProvingGround
//
//  Created by Young Lu on 2020/6/18.
//  Copyright © 2020 002. All rights reserved.
//

import Foundation
import  UIKit

extension UIView{
    func leadingAnchorAgainstTrail(TrailedView:UIView) {
        self.leadingAnchor.constraint(equalTo: TrailedView.trailingAnchor).isActive = true
    }
    func leadingAnchorAgainstTrail(TrailedView:UIView,constant:CGFloat) {
        self.leadingAnchor.constraint(equalTo: TrailedView.trailingAnchor,constant: constant).isActive = true
    }
    func trailAnchorAgainstLeading(leadingView:UIView)  {
        self.trailingAnchor.constraint(equalTo: leadingView.leadingAnchor).isActive = true
    }
    func trailAnchorAgainstLeading(leadingView:UIView,constant:CGFloat)  {
        self.trailingAnchor.constraint(equalTo: leadingView.leadingAnchor,constant: constant).isActive = true
    }
}

