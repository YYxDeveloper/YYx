//
//  TableViewControllerPresenter.swift
//  YYxProvingGround
//
//  Created by young lu on 2019/5/8.
//  Copyright © 2019 002. All rights reserved.
//

import Foundation
protocol TableViewControllerPresenterDelegate {
    func dataIsUpdate()
}
class TableViewControllerPresenter {
    private var orginalDatas = [Any]()
    private var allDatas = [Any]()
    var cellDatas = [Any]()
    
    var delegate:TableViewControllerPresenterDelegate?
    
    
    init() {
       
    }
    func updateDatasFirstTime<T>(cellRequiment:[T])  {
       
        cellDatas = cellRequiment
        delegate?.dataIsUpdate()
    }
    func updateDatas() {
        
        let test = ["xxxx","jjjjj","mmmmm"]
        cellDatas = test
        delegate?.dataIsUpdate()
        
    }
}
