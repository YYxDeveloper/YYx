//
//  NSLayoutXAxisAnchor+Extension.swift
//  YYxProvingGround
//
//  Created by young.lu on 2019/8/19.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit

extension NSLayoutXAxisAnchor{
    func sameAsLeftAnchor(withView:UIView) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.leftAnchor, constant: 0)
    }
    func sameAsLeftAnchor(withView:UIView,marginSpace:CGFloat) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.leftAnchor, constant: marginSpace)
    }
    func sameAsRightAnchor(withView:UIView) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.rightAnchor, constant: 0)
    }
    func sameAsRightAnchor(withView:UIView,marginSpace:CGFloat) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.rightAnchor, constant: -marginSpace)
    }
    func sameAsLeadingAnchor(withView:UIView) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.leadingAnchor, constant: 0)
    }
    func sameAsLeadingAnchor(withView:UIView,marginSpace:CGFloat) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.leadingAnchor, constant: marginSpace)
    }
    func sameAsTrailingAnchor(withView:UIView) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.trailingAnchor, constant: 0)
    }
    func sameAsTrailingAnchor(withView:UIView,marginSpace:CGFloat) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.trailingAnchor, constant: -marginSpace)
    }
    
}
