//
//  ViewController.swift
//  Elegant
//
//  Created by KingCQ on 2016/12/2.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit
import RxCocoa
import SnapKit

class ViewController: UIViewController {
    var tableView: UITableView!
    var items: [CustomItem] = [
        CustomItem(
            title: "BorderLine",
            dest: LineViewController.self
        ),
        CustomItem(
            title: "common",
            dest: CommonController.self
        ),
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(cellType: UITableViewCell.self)
        tableView.hideTailLine()
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }



}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dest = items[indexPath.row].dest.init()
        self.navigationController?.pushViewController(dest, animated: true)
    }

}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: UITableViewCell.self)
        cell.textLabel?.text = items[indexPath.row].title
        return cell
    }
}

struct CustomItem {
    var title: String
    var dest: UIViewController.Type
}

struct BaseModel {

}

struct Model<T: Modelable>: Modelable {

}

protocol Modelable {

}


