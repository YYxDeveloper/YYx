//
//  SidBar.swift
//  YYxProvingGround
//
//  Created by 002 on 2019/4/26.
//  Copyright © 2019年 002. All rights reserved.
//

import Foundation
import UIKit

class SideBar{
    
    let title = Observable<String>(value: "Loading")
    let isLoading = Observable<Bool>(value: false)
    let isTableViewHidden = Observable<Bool>(value: false)
    
    private let vc = ToolBoxManager.giveMeStaticTableViewController()
    let containerView:UIView
    let tableView:UITableView
   
   
    
  
    init(containerView:UIView,parentViewController:UIViewController,BundleButton:UIButton) {
        self.containerView = containerView
        self.tableView     = vc.tableView
       parentViewController.addSubViewWithChildController(addSubViewController: self.vc, toWitchView: containerView)
        
    }
    func turn() {
        self.isLoading.value = true
    }
   
    
}

