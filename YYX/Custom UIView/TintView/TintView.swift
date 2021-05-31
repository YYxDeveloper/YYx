//
//  TintView.swift
//  BasicTableViewController
//
//  Created by 002 on 2019/2/26.
//  Copyright © 2019年 002. All rights reserved.
//

import UIKit

class TintView: UIView {

    static let nibName = String(describing: TintView.self)
    @IBOutlet weak var containerBackgroundView: UIView!
    @IBOutlet weak var tintLabel: UILabel!
    @IBOutlet weak var actionBtn: UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    
    private func loadViewFromNib() {
        let view =  Bundle.main.loadNibNamed(TintView.nibName, owner: self, options: nil)?.first as! UIView
        view.frame = bounds;
        addSubview(view)
    }
    @IBAction func click(_ sender: Any) {
    }
    
}
