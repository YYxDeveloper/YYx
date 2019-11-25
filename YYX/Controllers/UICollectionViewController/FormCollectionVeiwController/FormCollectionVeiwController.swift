//
//  ViewController.swift
//  CollectionView-Programmatic
//
//  Created by chris  on 8/5/18.
//  Copyright © 2018 kuronuma studios. All rights reserved.
//

import UIKit

class FormCollectionVeiwController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    static let rowId = "RowCollectionViewCell"
    static let columnId = "ColumnCollectionViewCell"
    
    let hoManyCout = 4 //use Arrray count in the future
    var cellH:CGFloat{
        let viewH = view.frame.height
        return viewH/CGFloat(hoManyCout)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView?.backgroundColor = UIColor.white
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(RowCollectionViewCell.self, forCellWithReuseIdentifier: FormCollectionVeiwController.rowId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
       
        return hoManyCout//vertical nums
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FormCollectionVeiwController.rowId, for: indexPath) as! RowCollectionViewCell
        cell.appsCollectionView.tag = indexPath.row
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .red
        }
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: cellH)
    }
   
    

}



