//
//  YYxButton.swift
//  YYxProvingGround
//
//  Created by 呂子揚 on 2019/8/6.
//  Copyright © 2019 002. All rights reserved.
//

import UIKit

class YYxButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.backgroundColor = .blue
        
        self.addTarget(self, action: #selector(press), for: .touchUpInside)
        
    }
    @objc func press()  {
        YYxErrorHandler.printFailMsg("YYxButton press")
    }
    
    
}
