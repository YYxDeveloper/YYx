//
//  Extension+UITableView.swift
//  asdada
//
//  Created by young lu on 2019/2/6.
//  Copyright © 2019 young lu. All rights reserved.
//

import Foundation
import UIKit
extension UITableView{
    var defaultCellId:String {return "defaultCellId"}
    func scrollFirstIndex() {
        scrollToRow(at: IndexPath(row: 0, section: 0), at: ScrollPosition.middle, animated: true)
    }
    func disableDeselectCellButButton() {
        self.allowsSelection = false
    }
    func scrollLastInd()  {
        scrollToRow(at: IndexPath(row: self.numberOfRows(inSection: 0)-1, section: 0), at: ScrollPosition.middle, animated: true)
    }
    func giveMeDefaultCell(indexPath:IndexPath) -> UITableViewCell{
        
        let cell = self.dequeueReusableCell(withIdentifier: self.defaultCellId, for: indexPath)~!
            cell.setSelectionStyleIsNone()
        
        
        return cell
    }
    func preprocessDefaultRefreshControl() {
        var refreshControl: UIRefreshControl!
        refreshControl = UIRefreshControl()
        
        refreshControl.backgroundColor = UIColor.yellow
        refreshControl.tintColor = UIColor.blue
        
        self.addSubview(refreshControl)
        /*
         close::
         func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
         refreshControl.endRefreshing()
         }
         */
        
        
    }
}
