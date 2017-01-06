//
//  TableGroupController.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/12.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class TableGroupController: TableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // http://www.yilan.io/home/?category=57fdc6c1fa7f32080c6b5681&subscribe=5636cfcc767c5d2d0dfd1451
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: CGFloat.leastNormalMagnitude))
    }
}
