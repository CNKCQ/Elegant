//
//  4ViewController.swift
//  Elegant
//
//  Created by Steve on 29/09/2017.
//  Copyright © 2017 KingCQ. All rights reserved.
//

import UIKit
import SnapKit

class FViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        print("🌹 44444")
        
        
        let first = TabFController()
        let second = TabSController()
        let third = TabTController()
        let fouth = TabSController()
        let fieve = TabTController()
        let titles = ["待接单", "代取件", "配送中", "已完成", "待处理"]
        first.tabBarItem.title = titles[0]
        second.tabBarItem.title = titles[1]
        third.tabBarItem.title = titles[2]
        fouth.tabBarItem.title = titles[3]
        fieve.tabBarItem.title = titles[4]
        let viewPs: [(UIViewController, String)] = [(first, titles[0]), (second, titles[1]), (third, titles[2]), (fouth, titles[3]), (fieve, titles[4])]
        let tab = ViewPagerController()
        tab.viewPagers =  viewPs.flatMap({ViewPager(title: $1, controller: $0)})
        tab.pageDidAppear = { (controller, index) in
            print(controller, index)
        }
        tab.didSelected = { (index) in
            print("didSelected-----\(index)")
        }
        addChildViewController(tab)
        view.addSubview(tab.view)
        tab.view.snp.makeConstraints { (make) in
            make.left.right.equalTo(self.view)
            make.top.equalTo(self.view.snp.top).offset(200)
            make.bottom.equalTo(self.view.snp.bottom)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
}

struct ViewPager {
    var title: String?
    var controller: UIViewController?
}
