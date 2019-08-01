//
//  ViewController.swift
//  Simple Collection View
//
//  Created by RAMDHAN CHOUDHARY on 14/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class BasicCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    // MARK: Variables declearations
    @IBOutlet weak var collectionView: UICollectionView!
    var collectionArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"]

    // MARK: View Controller life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        /**
         use initial in storyBoard for example
         */
        //Make sure you confirm table datasource and delegate in controller or storyboard
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    // MARK: Table view Delegate and Datasource Methods
    
    //Number of totel collection items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionArray.count
    }
    
    //Here you need to create collection cell and show data on it
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for: indexPath as IndexPath) as! MyCollectionViewCell
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myLabel.text = self.collectionArray[indexPath.item]
        cell.backgroundColor = UIColor.lightGray
        
        //default collectionViewcell only have contentView not such as tableViewCell
//        cell.contentView.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.item)")
    }
    

}

