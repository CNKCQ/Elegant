//
//  LineViewController.swift
//  Elegant
//
//  Created by Steve on 2017/8/12.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit
import SnapKit


let line = LineViewController()

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
        
        button.addTarget(self, action: #selector(touchUp), for: .touchUpInside)
        button.setBackgroundColor(UIColor.random, for: .normal)

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
    
    func touchUp() {
        self.present(viewC, animated: true, completion: nil)
//        self.present(line, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.navigationController?.push(LineViewController())
    }
    
    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        if self != viewControllerToPresent {
            if viewControllerToPresent.parent?.childViewControllers.contains(self) == true {
                viewControllerToPresent.removeFromParentViewController()
                super.present(viewControllerToPresent, animated: flag, completion: completion)
            } else {
                super.present(viewControllerToPresent, animated: flag, completion: completion)
            }
        }
    }
}

extension UIViewController {
    
    
//    func present(_ viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)?) {
//
//    }
    
}
