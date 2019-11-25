//
//  ReactRowCollectionViewController.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/18.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
import UIKit
class CustomContentTableViewCell: UITableViewCell {
    /**don,t use ViewControll in cell
     https://stackoverflow.com/questions/30812915/adding-child-view-controller-view-to-dynamic-uitableviewcell
     
     */
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        setConstraintsAsParent()
        
        
    }
    func setConstraintsAsParent(insect:CGFloat = 5) {
        contentView.changeAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: insect, paddingLeft: insect, paddingBottom: insect, paddingRight: insect, width: 0, height: 0, enableInsets: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class ReactRowCollectionViewController: ReactDefaultUITableViewController {
    override func viewDidLoad() {
        tableView.register(CustomContentTableViewCell.self, forCellReuseIdentifier:tableView.defaultCellId)
        presenter.delegate = self
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: tableView.defaultCellId, for: indexPath) as? CustomContentTableViewCell)!
        if ( indexPath.row % 2) == 0{
            cell.contentView.backgroundColor = .blue
        }else{
            cell.contentView.backgroundColor = .red
        }
        
        return cell
    }
}
