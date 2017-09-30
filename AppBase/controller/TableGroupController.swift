//
//  TableGroupController.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/12.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit
import UI_

class TableGroupController: UIViewController {

    var sections: [SectionItem] = []
    var items: [Itemable] = [] {
        didSet {
            var section = SectionItem()
            section.items = items
            self.sections = [
                section
            ]
        }
    }
    var tableView: UITableView!
    var tableViewStyle: UITableViewStyle = .plain
    var cellTypes: [StaticTableViewCell.Type] = [StaticTableViewCell.self]

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
        cellTypes.forEach { (cellType) in
            tableView.register(cellType: cellType)
        }
        view.addSubview(tableView)
    }

    func reloadData() {
        tableView.reloadData()
    }
}

extension TableGroupController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = sections[indexPath.section]
            .items[indexPath.row]
        guard let cellType: StaticTableViewCell.Type = item.cellType ?? cellTypes.first else {
            fatalError("can't find the resuable cell")
        }
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: cellType)
        cell.setData(item)
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return sections[section].tail
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return sections[section].titleView
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return sections[section].tailView
    }

    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = sections[indexPath.section].items[indexPath.row]
        guard let dest = item.dest?.init() else {
            return
        }
        self.navigationController?.pushViewController(dest, animated: true)
    }

    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

}
