//
//  TableList.swift
//  Swiftk
//
//  Created by KingCQ on 16/6/27.
//  Copyright © 2016年 Jack. All rights reserved.
//

import UIKit

class TableViewController: ScrollViewController {
    var tableView: UITableView!
    var tableViewStyle: UITableViewStyle = .plain
    var cellType = TableViewCell.self
    
    override func viewDidLoad() {
        onPrepare()
        super.viewDidLoad()
        onCreateTableView()
    }
    
    func onPrepare() {}
    
    func onCreateTableView() {
        tableView = UITableView(frame: view.bounds, style: tableViewStyle)
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.titleView?.tintColor = navigationController?.navigationBar.barTintColor
        tableView.tableFooterView = UIView()
        tableView.registerReusableCell(cellType: cellType)
        view.addSubview(tableView)
    }
    
    override func reloadData() {
        tableView.reloadData()
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: cellType.reusableId)!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
