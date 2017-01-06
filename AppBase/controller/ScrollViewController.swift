//
//  ScrollViewController.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/12.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class ScrollViewController: BaseViewController {
    var items: [Item] = [] {
        didSet {
           reloadData()
        }
    }
    
    override func viewDidLoad() {
        
    }
    
    func reloadData() {
    }
}
