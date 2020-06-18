//
//  SameAsSuperView.swift
//  YYxProvingGround
//
//  Created by Young Lu on 2020/6/18.
//  Copyright © 2020 002. All rights reserved.
//

import Foundation
import  UIKit

extension UIView{
    
    func constrainBecomeSqure(length:CGFloat) {
        self.widthAnchor.constraint(equalToConstant: length).isActive = true
        self.heightAnchor.constraint(equalToConstant: length).isActive = true
    }
    func bottomSameAsParentBottomAnchor() {
        self.bottomAnchor.constraint(equalTo: firstSuperView.bottomAnchor).isActive = true
    }
    func bottomSameAsParentBottomAnchor(constant:CGFloat) {
        self.bottomAnchor.constraint(equalTo: firstSuperView.bottomAnchor,constant:-constant ).isActive = true
    }
    func topSameAsParentTopAnchor(constant:CGFloat) {
        self.topAnchor.constraint(equalTo: firstSuperView.topAnchor, constant: constant).isActive = true
        
    }
    func topSameAsParentTopAnchor(){
        self.topAnchor.constraint(equalTo: firstSuperView.topAnchor).isActive = true
    }
    func trailingSameAsParentTrailingAnchor() {
        self.trailingAnchor.constraint(equalTo: firstSuperView.trailingAnchor).isActive = true
        
    }
    func trailingSameAsParentTrailingAnchor(constant:CGFloat) {
        self.trailingAnchor.constraint(equalTo: firstSuperView.trailingAnchor,constant:constant).isActive = true
        
    }
    func leadingSameAsParentLeadingAnchor() {
        self.leadingAnchor.constraint(equalTo: firstSuperView.leadingAnchor).isActive = true
        
    }
    func anchorsSameAsParentLeadAndTrail() {
        self.leadingAnchor.constraint(equalTo: firstSuperView.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: firstSuperView.trailingAnchor).isActive = true
        
    }
    func anchorsSameAsParentLeadAndTrail(constant:CGFloat) {
        self.leadingAnchor.constraint(equalTo: firstSuperView.leadingAnchor,constant: constant).isActive = true
        self.trailingAnchor.constraint(equalTo: firstSuperView.trailingAnchor,constant: -constant).isActive = true
        
    }
    func sameAsSuperViewTopAndBottomAnchor() {
        self.setAutoresizingFalse()
        self.topAnchor.constraint(equalTo: firstSuperView.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: firstSuperView.bottomAnchor).isActive = true
        
    }
    func sameAsSuperViewTopAndBottomAnchor(marginSpace:CGFloat) {
        self.setAutoresizingFalse()
        self.topAnchor.constraint(equalTo: firstSuperView.topAnchor,constant:marginSpace ).isActive = true
        self.bottomAnchor.constraint(equalTo: firstSuperView.bottomAnchor,constant:marginSpace ).isActive = true
        
    }
    func anchorCommonSuperViewConstraint(marginSpace:CGFloat){
        //上左右+高
        self.setAutoresizingFalse()
        self.heightAnchor.constraint(equalToConstant: marginSpace).isActive = true
        self.topAnchor.constraint(equalTo: firstSuperView.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: firstSuperView.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: firstSuperView.trailingAnchor).isActive = true
        
    }
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
}
