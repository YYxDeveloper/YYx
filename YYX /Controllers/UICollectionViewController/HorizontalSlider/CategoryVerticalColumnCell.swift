//
//  CategoryCell.swift
//  CollectionView-Programmatic
//
//  Created by chris  on 8/5/18.
//  Copyright © 2018 kuronuma studios. All rights reserved.
//

import UIKit


class CategoryVerticalColumnCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    let cellId = "CategoryHorizenTalRowCell"
    static let cellH = 70
    static let cellW = 70
    var datas: [CategoryVerticalColumnModel]?
    
    static func giveMeTestDatas()->[CategoryVerticalColumnModel]{
         let datas: [CategoryVerticalColumnModel] = [CategoryVerticalColumnModel(titleText: "qwe"),CategoryVerticalColumnModel(titleText: "tt"),CategoryVerticalColumnModel(titleText: "ttt"),CategoryVerticalColumnModel(titleText: "ttt"),CategoryVerticalColumnModel(titleText: "ttt"),CategoryVerticalColumnModel(titleText: "ttt"),CategoryVerticalColumnModel(titleText: "ooooo")]
        return datas
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        datas = CategoryVerticalColumnCell.giveMeTestDatas()
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
        addSubview(appsCollectionView)
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        appsCollectionView.hideIndicator(witchIndicator: .both)
        
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        
        appsCollectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        appsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8 ).isActive = true
        appsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        appsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        appsCollectionView.preprocessWithYYxCell()
        
    }
    
    func reloadDataWhenCellPress() {
        func cleanAllBackgroudColor(){
            
        }
        
        cleanAllBackgroudColor()
        appsCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return datas.unwrappedValue.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.giveMeCategoryHorizenTalRowCell(indexPatht: indexPath)
        cell.titleLabel.text = datas.unwrappedValue[indexPath.row].titleText
        cell.backgroundColor = .orange
//  
     
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //yyx
        return CGSize(width: CategoryVerticalColumnCell.cellW, height: CategoryVerticalColumnCell.cellH)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CategoryHorizenTalRowCell
        
        cell.backgroundColor = .green
        
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
         let cell = collectionView.cellForItem(at: indexPath) as! CategoryHorizenTalRowCell
        cell.backgroundColor = .orange
    }
    
}


class AppCell: UICollectionViewCell {
    
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
