//
//  Item.swift
//  Elegant
//
//  Created by Steve on 01/09/2017.
//  Copyright © 2017 KingCQ. All rights reserved.
//

import UIKit

struct Item: Itemable {

    var title: String?
    var dest: UIViewController.Type?
    var detail: String?
    var cellType: StaticTableViewCell.Type?

    init(
        title: String? = nil,
        detail: String? = nil,
        dest: UIViewController.Type? = nil,
        cellType: StaticTableViewCell.Type? = nil) {
        self.title = title
        self.detail = detail
        self.dest = dest
        self.cellType = cellType
    }
}
