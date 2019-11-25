//
//  CategoryCell.swift
//  CollectionView-Programmatic
//
//  Created by chris  on 8/5/18.
//  Copyright © 2018 kuronuma studios. All rights reserved.
//

import UIKit

class RowCollectionViewCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let appsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.backgroundColor = UIColor.clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    func setupViews() {
        backgroundColor = UIColor.clear
     
        addSubview(appsCollectionView)
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        
        appsCollectionView.preprocess(registerNibClassName: UICollectionView.CategoryHorizontalRowCellId)
        
        appsCollectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        appsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8 ).isActive = true
        appsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        appsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FormCollectionVeiwController.columnId, for: indexPath) as! ColumnCollectionViewCell
        let cell = collectionView.giveMeCategoryHorizenTalRowCell(indexPatht: indexPath) 
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 100, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let row    = collectionView.tag
        let column = indexPath.row
       print("\(row)XXXX\(column)")
    }
}



