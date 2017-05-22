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
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt _: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: cellType.reusableId)!
    }

    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {
    }

    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
