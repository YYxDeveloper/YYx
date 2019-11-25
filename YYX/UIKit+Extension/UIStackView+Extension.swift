//
//  UIStackView+Extension.swift
//  YYxProvingGround
//
//  Created by 呂子揚 on 2019/8/5.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView{
    func distributeFillEqually(axis:NSLayoutConstraint.Axis,marginSpace:CGFloat) {
        self.axis = axis
        self.spacing = marginSpace
        self.distribution = .fillEqually
    }
    func addBackgroundColorView(color: UIColor) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
    static func editBoardViewConstraint(boardView:UIStackView,verticlePadding:CGFloat,horizentalPadding:CGFloat,columnHeight:CGFloat,howmanyColumns:CGFloat){
        let loginInputInfoParentView = boardView.firstSuperView
        
        if #available(iOS 11, *) {
            let guide = boardView.firstSuperView.safeAreaLayoutGuide
            boardView.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1.0).isActive = true
            
            
            
        } else {
            boardView.topAnchor.sameAsTopAnchor(withView: loginInputInfoParentView,marginSpace: 20).isActive = true
        }
        
        if #available(*, iOS 6){
            //不支援NSLayoutConstraint
        }
        
        
        let count:CGFloat = CGFloat(boardView.arrangedSubviews.count)
        
        NSLayoutConstraint.activate([
            boardView.leadingAnchor.sameAsLeadingAnchor(withView: loginInputInfoParentView),
            boardView.trailingAnchor.sameAsTrailingAnchor(withView: loginInputInfoParentView),
            boardView.heightAnchor.constraint(equalToConstant: columnHeight * count + verticlePadding * count)
            
            ])
    }
}

