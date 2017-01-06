//
//  TableViewCell.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/11.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, Reusable {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
