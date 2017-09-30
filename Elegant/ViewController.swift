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

var viewC = UIViewController()

class ViewController: TableGroupController {


    override func viewDidLoad() {
        super.viewDidLoad()
        let firstTitleview = UILabel()
        firstTitleview.backgroundColor = .white
        firstTitleview.textAlignment = .center
        firstTitleview.text = "来吧"
        viewC = self
        let firstItem = [
            Item(
                title: "BorderLine",
                dest: LineViewController.self,
                cellType: StaticTableViewCell.self
            ),
            Item(
                title: "common",
                dest: CommonController.self,
                cellType: MoreCell.self
            ),
            ]

        self.sections = [
            SectionItem(
                title: "第一",
                titleView: firstTitleview,
                items: firstItem
            ),
            SectionItem(
                title: "second",
                items: firstItem
            ),
        ]
    }

    override func onPrepare() {
        cellTypes = [
            MoreCell.self,
            StaticTableViewCell.self
        ]
        tableViewStyle = .grouped
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.deselectAll(animated: false)
    }
}





