//
//  NSLayoutConstraint+Extension.swift
//  YYxProvingGround
//
//  Created by young.lu on 2019/8/19.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit
extension NSLayoutYAxisAnchor{
   
    func sameAsTopAnchor(withView:UIView) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.topAnchor, constant: 0)
    }
    func sameAsTopAnchor(withView:UIView,marginSpace:CGFloat) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.topAnchor, constant: marginSpace)
    }
    func sameAsBottomAnchor(withView:UIView) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.bottomAnchor, constant: 0)
    }
    func sameAsBottomAnchor(withView:UIView,marginSpace:CGFloat) -> NSLayoutConstraint {
        return self.constraint(equalTo: withView.bottomAnchor, constant: -marginSpace)
    }
}
