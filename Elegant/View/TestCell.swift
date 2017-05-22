//
//  TestCell.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/12.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class TestCell: TableViewCell {
    var nameLabel: UILabel = {
        $0.backgroundColor = .yellow
        $0.frame = CGRect(x: 5, y: 5, width: 200, height: 40)
        return $0
    }(UILabel())

    override init(style _: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addSubview(nameLabel)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
