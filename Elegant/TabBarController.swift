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
        let table = UITableViewController()
    }

    override func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}
