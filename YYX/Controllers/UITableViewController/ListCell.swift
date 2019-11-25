//
//  ListCell.swift
//  Tucan
//
//  Created by Cat on 2/5/18.
//  Copyright © 2018 Midnight. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

     var tucanImageView = UIImageView()
     var tucanNameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        customize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customize()
    }
    
    private func customize() {
//        self.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1.0)
        self.contentView.backgroundColor = .orange
        tucanImageView.contentMode = .scaleAspectFit
        
        tucanNameLabel.font = UIFont.systemFont(ofSize: 20)
        tucanNameLabel.textAlignment = .left
        tucanNameLabel.backgroundColor = .blue
        tucanNameLabel.textColor = .white
//        tucanNameLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0.3, alpha: 1.0)
        
        contentView.addSubview(tucanImageView)
        contentView.addSubview(tucanNameLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        tucanImageView.anchorEqualParentViewWithConstant(constant: 5)
        tucanNameLabel.anchorEqualCenter(height: 100, width: 200)

//        tucanImageView.translatesAutoresizingMaskIntoConstraints = false
//        tucanImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        tucanImageView.heightAnchor.constraint(equalToConstant: 500).isActive = true
//        tucanImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        tucanImageView.centerYAnchor.constraint(equalTo: firstSuperView.centerYAnchor).isActive = true

    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.selectionStyle = .blue
    }
}
