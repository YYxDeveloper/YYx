//
//  ViewController.swift
//  TableViewSwift
//
//  Created by James Taylor on 11/06/2019.
//  Copyright © 2019 jamestaylor. All rights reserved.
//

import UIKit

class ProgrammaticallyTableViewController: UIViewController {
    
    let tableView = UITableView()
    let cellID = "CellID"
    var nameArray = ["James", "Katie", "Justin", "Hollie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self as UITableViewDataSource
        registerCell()
        configureLayout()
    }
    
    fileprivate func registerCell() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
    
    fileprivate func configureLayout() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
}

extension ProgrammaticallyTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
    }
}
