//
//  ViewController.swift
//  StaticCellCollectionView
//
//  Created by Robert Kerr on 10/21/17.
//  Copyright © 2017 Robert Kerr. All rights reserved.
//  https://robkerr.com/how-to-create-a-static-uicollectionview/

import UIKit

class StaticCellCollectionView: UIViewController {
    
    //reused id string
    let cellIds = ["Purple Cell","Green Cell","Blue Cell","Red Cell"]
    let cellSizes = Array(repeatElement(CGSize(width:170, height:80), count: 4))
    
    //    let cellSizes = [
    //        CGSize(width:210, height:60),
    //        CGSize(width:180, height:100),
    //        CGSize(width:170, height:80),
    //        CGSize(width:150, height:150)
    //    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension StaticCellCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on \(cellIds[indexPath.row])")
    }
}
extension StaticCellCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellIds.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIds[indexPath.item], for: indexPath)
    }
}

extension StaticCellCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return cellSizes[indexPath.item]
    }
}
