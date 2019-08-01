//
//  ViewController.swift
//  CollectionView-Programmatic
//
//  Created by chris  on 8/5/18.
//  Copyright © 2018 kuronuma studios. All rights reserved.
//

import UIKit

class HorizontalSlider: UICollectionViewController {
    // refer: https://ithelp.ithome.com.tw/articles/10197250?sc=iThelpR
    let cellId = "HorizontalSliderCell"
    let horizontalModel = 1;

    /**
     parentView hight  must smaller than CategoryVerticalColumnCell.cellH
     */
    /*
     scrollView的控制在CategoryVerticalColumnCell,這是可以二維的框架
     */
    static  func giveMeHorizontalSlider() -> HorizontalSlider {
        let emptyFlowlayout = UICollectionViewFlowLayout()
        return HorizontalSlider(collectionViewLayout: emptyFlowlayout)
    }
   
    func setupHorizontalSlider()  {
        collectionView?.register(CategoryVerticalColumnCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.backgroundColor = .red
    }
    
    

}

extension HorizontalSlider:UICollectionViewDelegateFlowLayout{
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return horizontalModel
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryVerticalColumnCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let h = view.frame.height.convertInt()
        guard   h <= CategoryVerticalColumnCell.cellH else {
            assertionFailure("------error following-----")
            YYxErrorHandler.printGuardFail()
            return CGSize()
        }
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
   
}


