//
//  BaseNavigationController.swift
//  Swiftk
//
//  Created by KingCQ on 16/6/27.
//  Copyright © 2016年 Jack. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBarsOnSwipe = true
    }
}
