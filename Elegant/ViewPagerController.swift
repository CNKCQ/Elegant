//
//  ViewPagerController.swift
//  Elegant
//
//  Created by Steve on 29/09/2017.
//  Copyright © 2017 KingCQ. All rights reserved.
//

import UIKit

class ViewPagerController: UIViewController {
    var titleView: TitleView!
    let style = TitleStyle(titleBgColor: .white, isShowBottomLine: true, bottomLineColor: .orange, bottomLineH: 3)
    var viewPagers: [ViewPager] = []
    var pageDidAppear: ((_ toPage: UIViewController, _ index: Int) -> Void)?
    var didSelected: ((_ index: Int) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tab = PagerTabController(viewPagers.flatMap({$0.controller}))
        tab.pageDidAppear = self.pageDidAppear
        tab.didSelected = self.didSelected
        addChildViewController(tab)
        view.addSubview(tab.view)
        let titleH : CGFloat = style.titleHeight
        titleView = TitleView(frame: .zero, titles: viewPagers.flatMap({$0.title}), style : style)
        titleView.delegate = tab
        view.addSubview(titleView)
        titleView.snp.makeConstraints { (make) in
            make.right.left.equalTo(self.view)
            make.height.equalTo(titleH)
            make.top.equalTo(self.view.snp.top)
        }
        tab.view.snp.makeConstraints { (make) in
            make.left.right.equalTo(titleView)
            make.top.equalTo(self.titleView.snp.bottom)
            make.bottom.equalTo(self.view.snp.bottom)
        }
    }
}
