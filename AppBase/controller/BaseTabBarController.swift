//
//  BaseTabBarController.swift
//  Swiftk
//
//  Created by KingCQ on 16/6/27.
//  Copyright © 2016年 Jack. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
}

extension BaseTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {}
}
