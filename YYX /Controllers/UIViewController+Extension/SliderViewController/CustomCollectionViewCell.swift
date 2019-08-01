//
//  CustomCollectionViewCell.swift
//  UICollectionViewDemo
//
//  Created by 4Axis_Admin on 11/18/18.
//  Copyright © 2018 com.npruban.tutorials. All rights reserved.
//

import Foundation
import UIKit


class CustomCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    

    
    
    
    lazy var cellTopView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
        
    }()
    
    lazy var cellBottomRightButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
        
    }()
    
    
    lazy var cellBottomLeftButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor.blue
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
        
    }()
    
    
    
    
    
}
