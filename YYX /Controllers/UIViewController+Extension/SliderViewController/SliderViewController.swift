//
//  ViewController.swift
//  UICollectionViewDemo
//
//  Created by Piranavaruban on 11/18/18.
//  Copyright © 2018 com.npruban.tutorials. All rights reserved.
//

import UIKit


class SliderViewController: UIViewController  {
    let kCellIdentifier_CollectionViewCell = "kCellIdentifier_CollectionViewCell"
    //https://github.com/YYxDeveloper/calenderAppiOS
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    let hight:CGFloat = 200
    func configureUI(){
        self.view.addSubview(testCollectionView)
      
        testCollectionView.anchorEqualCenter(height: hight, width: hight)
        testCollectionView.addSubview(indicatorBar)
        
//        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .width , relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1, constant: 50))
//
//        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1, constant: 50))
//
//
//        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0))
//
//        self.view.addConstraint(NSLayoutConstraint(item: testCollectionView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        
        
        
        
    }

    
    
    lazy var testCollectionView: UICollectionView = {
        
        let collectionViewLayout = UICollectionViewFlowLayout();
        collectionViewLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let testCollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewLayout)
        testCollectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: kCellIdentifier_CollectionViewCell)
        testCollectionView.translatesAutoresizingMaskIntoConstraints = false
        testCollectionView.backgroundColor = UIColor.purple
        testCollectionView.dataSource = self
        testCollectionView.delegate = self
        return testCollectionView
        
    }()
    lazy var indicatorBar:UIView = {
        let view = UIView(frame: CGRect(x:0 ,y:  hight - 5, width: 200, height: 5))
        view.backgroundColor = .orange
        return view
    }()
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print(scrollView.contentOffset)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(collectionView.contentOffset)
        UIView.animate(withDuration: 1, animations: {
//           YourCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
            let  aa = collectionView.cellForItem(at: indexPath)
            let x = aa?.frame.origin.x
            self.indicatorBar.frame.origin.x = x!
            
        })
    }

    
}



// MARK: - UICollectionViewDataSource delegate methods

extension SliderViewController:  UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kCellIdentifier_CollectionViewCell, for: indexPath)
        cell.contentView.backgroundColor =  UIColor.magenta
        return cell
    }
    
    
}



// MARK: - UICollectionViewDelegate delegate methods
extension SliderViewController : UICollectionViewDelegate{
    
    
}


// MARK: - UICollectionViewDelegateFlowLayout delegate methods
extension SliderViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.size.width - 16, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8)
    }
}


