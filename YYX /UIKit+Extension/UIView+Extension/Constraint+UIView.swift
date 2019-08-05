//
//  Constraint+UIView.swift
//  BasicTableViewController
//
//  Created by 002 on 2019/2/26.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    func anchorEqualParentView() {
        //https://medium.com/@hassanahmedkhan/autolayouts-via-layout-anchors-5214b3f746a9
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo:firstSuperView.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: firstSuperView.trailingAnchor).isActive = true
        self.topAnchor.constraint(equalTo: firstSuperView.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: firstSuperView.bottomAnchor).isActive = true
    }
    func anchorEqualParentViewWithConstant(constant:CGFloat) {
        //https://medium.com/@hassanahmedkhan/autolayouts-via-layout-anchors-5214b3f746a9
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo:firstSuperView.leadingAnchor,constant:constant).isActive = true
        self.trailingAnchor.constraint(equalTo: firstSuperView.trailingAnchor,constant:-constant).isActive = true
        self.topAnchor.constraint(equalTo: firstSuperView.topAnchor,constant:constant).isActive = true
        self.bottomAnchor.constraint(equalTo: firstSuperView.bottomAnchor,constant:constant).isActive = true
    }
    func anchorEqualCenter(height:CGFloat,width:CGFloat) {
        //https://medium.com/@hassanahmedkhan/autolayouts-via-layout-anchors-5214b3f746a9
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        self.centerXAnchor.constraint(equalTo: firstSuperView.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: firstSuperView.centerYAnchor).isActive = true
    }
    func changeAnchor (top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat, enableInsets: Bool) {
        //https://medium.com/@kemalekren/swift-create-custom-tableview-cell-with-programmatically-in-ios-835d3880513d
        var topInset = CGFloat(0)
        var bottomInset = CGFloat(0)
        
        if #available(iOS 11, *), enableInsets {
            let insets = self.safeAreaInsets
            topInset = insets.top
            bottomInset = insets.bottom
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop+topInset).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom-bottomInset).isActive = true
        }
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
    }
    
}
