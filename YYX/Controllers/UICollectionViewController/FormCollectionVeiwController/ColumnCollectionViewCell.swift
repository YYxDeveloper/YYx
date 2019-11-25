//
//  ColumnCollectionViewCell.swift
//  CollectionView-Programmatic
//
//  Created by young lu on 2019/5/21.
//  Copyright © 2019 kuronuma studios. All rights reserved.
//

import Foundation
import UIKit

class ColumnCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "frozen")
        iv.contentMode = .scaleAspectFit
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        return iv
    }()
    
    //Create a label for title, name it nameLabel
    
    //create category label, name it categoryLabel
    
    func setupViews() {
        addSubview(imageView)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        
    }
}
