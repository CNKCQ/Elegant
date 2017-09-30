//
//  TabBarController.swift
//  Elegant
//
//  Created by KingCQ on 16/9/29.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class TabBarController: BaseTabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = UITableViewController()

    }

    override func tabBarController(_: UITabBarController, shouldSelect _: UIViewController) -> Bool {
        return true
    }
}
