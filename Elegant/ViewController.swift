//
//  ViewController.swift
//  Elegant
//
//  Created by KingCQ on 2016/12/2.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit
import RxCocoa
import SnapKit

var viewC = UIViewController()

class ViewController: TableGroupController {


    override func viewDidLoad() {
        super.viewDidLoad()
        let firstTitleview = UILabel()
        firstTitleview.backgroundColor = .white
        firstTitleview.textAlignment = .center
        firstTitleview.text = "来吧"
        let refreshHeader = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        refreshHeader.backgroundColor = UIColor.red
        tableView.refreshHeader = refreshHeader
        tableView.addSubview(tableView.refreshHeader!)
        let loadMoreFooter = UIView(frame: CGRect(x: 0, y: 400, width: 200, height: 40))
        loadMoreFooter.backgroundColor = UIColor.random
        tableView.loadMoreFooter = loadMoreFooter
        tableView.addSubview(tableView.loadMoreFooter!)
        
        
        viewC = self
        let firstItem = [
            Item(
                title: "BorderLine",
                dest: LineViewController.self,
                cellType: StaticTableViewCell.self
            ),
            Item(
                title: "common",
                dest: CommonController.self,
                cellType: MoreCell.self
            ),
            ]

        self.sections = [
            SectionItem(
                title: "第一",
                titleView: firstTitleview,
                items: firstItem
            ),
            SectionItem(
                title: "second",
                items: firstItem
            ),
        ]
        
    }

    override func onPrepare() {
        cellTypes = [
            MoreCell.self,
            StaticTableViewCell.self
        ]
        tableViewStyle = .grouped
    }
    
    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dic: Dictionary = ["key": "你好"]
        print(dic)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.deselectAll(animated: false)
    }
}


extension UIScrollView {
    
    private struct AssociatedKeys {
        static var headerKey = "UIScrollView.refreshHeader"
        static var footerKey = "UIScrollView.loadMoreFooter"
    }
    
    var refreshHeader: UIView? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.headerKey) as? UIView
        }
        set (header) {
            objc_setAssociatedObject(self, &AssociatedKeys.headerKey, header, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    var loadMoreFooter: UIView? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.footerKey) as? UIView
        }
        set (footer) {
            objc_setAssociatedObject(self, &AssociatedKeys.footerKey, footer, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}


