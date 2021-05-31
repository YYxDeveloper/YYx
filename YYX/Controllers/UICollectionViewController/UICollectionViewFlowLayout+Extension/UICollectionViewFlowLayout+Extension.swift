//
//  UICollectionViewFlowLayout+Extension.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/5/2.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionViewFlowLayout{
    /*基本設置參數，但還需要依照需求修改，use for reference*/
    func editBasicFlowLayout(collectionView:UICollectionView,howManyItemARow:Int) {
        
        let twoSideWidth = 10
        let totalWidth = collectionView.frame.width.convertInt()/howManyItemARow
        self.sectionInset = UIEdgeInsets(top: 5, left: (twoSideWidth/2).convertCGFloat(), bottom: 5, right: (twoSideWidth/2).convertCGFloat())
        self.itemSize = CGSize(width: totalWidth - twoSideWidth, height: 100)
        self.minimumLineSpacing = 5
        self.scrollDirection = .vertical
        self.headerReferenceSize = CGSize( width: totalWidth - twoSideWidth, height: 40)
    }
}
