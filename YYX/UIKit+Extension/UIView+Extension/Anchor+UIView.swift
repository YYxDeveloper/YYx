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
    func setHeightAnchor(constant:CGFloat) {
        self.heightAnchor.constraint(equalToConstant: constant).isActive = true
    }
    func setWidthAnchor(constant:CGFloat) {
        self.widthAnchor.constraint(equalToConstant: constant).isActive = true
    }
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
    func topAnchorAgainstBotom(bottomView:UIView) {
        self.topAnchor.constraint(equalTo: bottomView.bottomAnchor).isActive = true
    }
    func topAnchorAgainstBotom(bottomView:UIView,constant:CGFloat) {
        self.topAnchor.constraint(equalTo: bottomView.bottomAnchor,constant:constant).isActive = true
    }
    func bottomAnchorAgainstTop(TopView:UIView)  {
        self.bottomAnchor.constraint(equalTo: TopView.topAnchor).isActive = true
    }
    func bottomAnchorAgainstTop(TopView:UIView,constant:CGFloat)  {
           self.bottomAnchor.constraint(equalTo: TopView.topAnchor,constant: constant).isActive = true
       }
}

