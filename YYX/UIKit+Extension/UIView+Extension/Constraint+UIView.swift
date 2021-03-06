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
    //this function will WARNING
    /**
     not warning soluion by storyboard
     https://medium.com/@apppeterpan/設定背景圖片的-top-間距條件對象是-superview-不是-top-layout-guide-8d8b46
     */
    func setTopAnchorEqualStatusBarTop(witchViewController:UIViewController){
        var statusHeight:CGFloat?
        if #available(iOS 13.0, *) {
            let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            statusHeight = keyWindow?.windowScene?.statusBarManager?.statusBarFrame.height
            
        } else {
            statusHeight = UIApplication.shared.statusBarFrame.size.height // 20 or 40
        }
        
        print("statusHeight=\(String(describing: statusHeight))")
        self.topAnchor.constraint(equalTo: witchViewController.view.bottomAnchor, constant: 0).isActive = true
    }
   
   
    func heightEqualWidth() -> NSLayoutConstraint {
        return self.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1)
    }
    func heightEqualWidth(withMultiplier:CGFloat) -> NSLayoutConstraint {
        return self.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: withMultiplier)
    }
    func widthEqualHeight() -> NSLayoutConstraint {
        return self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1)
    }
    func widthEqualHeight(withMultiplier:CGFloat) -> NSLayoutConstraint {
        return self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: withMultiplier)
    }
    func leadingKissTrailing(withView:UIView) -> NSLayoutConstraint {
        //一定要有回傳值，不然 NSLayoutConstraint.activate會出錯
        return self.leadingAnchor.constraint(equalTo: withView.trailingAnchor, constant: 0)
    }
    func leadingKissTrailing(withView:UIView,marginSoace:CGFloat) -> NSLayoutConstraint {
        //一定要有回傳值，不然 NSLayoutConstraint.activate會出錯
        return self.leadingAnchor.constraint(equalTo: withView.trailingAnchor, constant: marginSoace)
    }
    
    func trailingKissLeading(withView:UIView) -> NSLayoutConstraint {
        
        //一定要有回傳值，不然 NSLayoutConstraint.activate會出錯
        return self.trailingAnchor.constraint(equalTo: withView.leadingAnchor, constant: 0)
    }
    func trailingKissLeading(withView:UIView,marginSpace:CGFloat) -> NSLayoutConstraint {
        
        //一定要有回傳值，不然 NSLayoutConstraint.activate會出錯
        return self.trailingAnchor.constraint(equalTo: withView.leadingAnchor, constant: -marginSpace)
    }
    func leftToRight(withView:UIView) -> NSLayoutConstraint {
        
        //一定要有回傳值，不然 NSLayoutConstraint.activate會出錯
        return self.leftAnchor.constraint(equalTo: withView.rightAnchor, constant: 0)
    }
    func rightToLeft(withView:UIView) -> NSLayoutConstraint {
        
        //一定要有回傳值，不然 NSLayoutConstraint.activate會出錯
        return self.rightAnchor.constraint(equalTo: withView.leadingAnchor, constant: 0)
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
    func sameAsSuperViewHeightAnchor() -> NSLayoutConstraint {
        return self.heightAnchor.constraint(equalTo: self.firstSuperView.heightAnchor, constant: 0)
    }
    func sameAsSuperViewWidthAnchor() -> NSLayoutConstraint {
        return self.widthAnchor.constraint(equalTo: self.firstSuperView.widthAnchor, constant: 0)
    }
    func sameAsSuperViewTopAnchor() -> NSLayoutConstraint {
        return self.topAnchor.constraint(equalTo: self.firstSuperView.topAnchor, constant: 0)
    }
    func sameAsSuperViewTopAnchor(margnSpace:CGFloat) -> NSLayoutConstraint {
        return self.topAnchor.constraint(equalTo: self.firstSuperView.topAnchor, constant: margnSpace)
    }
    func sameAsSuperViewBottomAnchor() -> NSLayoutConstraint {
        return self.bottomAnchor.constraint(equalTo: self.firstSuperView.bottomAnchor, constant: 0)
    }
    func sameAsSuperViewBottomAnchor(margnSpace:CGFloat) -> NSLayoutConstraint {
        return self.bottomAnchor.constraint(equalTo: self.firstSuperView.bottomAnchor, constant: -margnSpace)
    }
    func sameAsSuperViewRightAnchor() -> NSLayoutConstraint {
        return self.rightAnchor.constraint(equalTo: self.firstSuperView.rightAnchor, constant: 0)
    }
    func sameAsSuperViewLeftAnchor() -> NSLayoutConstraint {
        return self.leftAnchor.constraint(equalTo: self.firstSuperView.leftAnchor, constant: 0)
    }
    func sameAsSuperViewLeadingAnchor() -> NSLayoutConstraint {
        return self.leadingAnchor.constraint(equalTo: self.firstSuperView.leadingAnchor, constant: 0)
    }
    func sameAsSuperViewLeadingAnchor(margnSpace:CGFloat) -> NSLayoutConstraint {
        return self.leadingAnchor.constraint(equalTo: self.firstSuperView.leadingAnchor, constant: margnSpace)
    }
    func sameAsSuperViewTrailingAnchor() -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(equalTo: self.firstSuperView.trailingAnchor, constant: 0)
    }
    func sameAsSuperViewTrailingAnchor(margnSpace:CGFloat) -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(equalTo: self.firstSuperView.trailingAnchor, constant: -margnSpace)
    }
    
}
