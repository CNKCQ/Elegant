//
//  MoreCell.swift
//  Elegant
//
//  Created by Steve on 08/09/2017.
//  Copyright © 2017 KingCQ. All rights reserved.
//

import UIKit
import SnapKit


class MoreCell: StaticTableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        contentView.addSubview(detailLabel)
        layout()
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setData(_ item: Itemable) {

    }

    func layout() {
        nameLabel.snp.makeConstraints { (make) in
            make.left.right.equalTo(self.contentView)
            make.top.equalTo(self.contentView.snp.top)
            make.height.equalTo(44)
        }
        detailLabel.snp.makeConstraints { (make) in
            make.left.right.equalTo(self.contentView)
            make.top.equalTo(nameLabel.snp.bottom)
            make.height.equalTo(60)
            make.bottom.equalTo(self.contentView.snp.bottom)
        }
    }

    var nameLabel: UILabel = {
        $0.backgroundColor = .white
        $0.text = "test"
        return $0
    }(UILabel())

    var detailLabel: UILabel = {
        $0.backgroundColor = .white
        $0.text = "more text"
        return $0
    }(UILabel())
}
