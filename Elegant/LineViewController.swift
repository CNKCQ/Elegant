//
//  LineViewController.swift
//  Elegant
//
//  Created by Steve on 2017/8/12.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit
import SnapKit

class LineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        edgesForExtendedLayout = []

        let subView = UIView()
        subView.backgroundColor = .yellow
        subView.addBorder(for: [.all], color: .blue)
        view.addSubview(subView)

        let label = UILabel()
        label.backgroundColor = .yellow
        label.addBorder(for: [.all], color: .blue, insets: UIEdgeInsets(all: -10))
        view.addSubview(label)

        let button = UIButton()
        button.backgroundColor = .yellow
        button.addBorder(for: [.bottom], color: .blue)
        view.addSubview(button)

        let textField = UITextField()
        textField.backgroundColor = .yellow
        textField.addBorder(for: [.bottom], color: .blue, insets: UIEdgeInsets(leftRight: -10))
        view.addSubview(textField)

        subView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(20)
            make.centerX.equalTo(self.view)
            make.height.equalTo(44)
            make.width.equalTo(120)
        }

        label.snp.makeConstraints { (make) in
            make.top.equalTo(subView.snp.bottom).offset(20)
            make.centerX.equalTo(self.view)
            make.height.equalTo(44)
            make.width.equalTo(120)
        }

        button.snp.makeConstraints { (make) in
            make.top.equalTo(label.snp.bottom).offset(20)
            make.centerX.equalTo(self.view)
            make.height.equalTo(44)
            make.width.equalTo(120)
        }

        textField.snp.makeConstraints { (make) in
            make.top.equalTo(button.snp.bottom).offset(20)
            make.centerX.equalTo(self.view)
            make.height.equalTo(44)
            make.width.equalTo(120)
        }
    }
}
