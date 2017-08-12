//
//  CommonController.swift
//  Elegant
//
//  Created by Steve on 2017/8/12.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

class CommonController: UIViewController {
    var label: UILabel!
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        button = UIButton(frame: CGRect(x: 60, y: 100, width: 200, height: 44))
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        button.backgroundColor = UIColor.green
        view.addSubview(button)

        button.snp.makeConstraints { (make) in
            make.left.top.equalTo(self.view).offset(100)
            make.right.equalTo(self.view).offset(-100)
            make.height.equalTo(44)
        }
        //        button.addBorder(10, color: .black, direction: .top)
        //            button.addBorder(edges: [.left, .right], color: .blue, thickness: 2)

        button.addBorder(for: [.bottom], width: 1, color: .white, insets: UIEdgeInsets(all: -10))
        //        button.addBorder(1, color: .black, direction: .left)
        //        button.addBorder(5, color: .blue, direction: .right)
        //        button.addBorder(1, color: .purple, direction: .bottom)
        label = UILabel(frame: CGRect(x: 100, y: 120, width: 120, height: 60))
        label.backgroundColor = .red
        view.addSubview(label)
        print("🌹", self.view.subviews.count, "🌹", self.view.flatSubviews.count)
    }

    @objc func click() {

        DispatchQueue.main.async { [unowned self] in
            self.label.frame = CGRect(x: 40, y: 200, width: 40, height: 40)
            self.label.backgroundColor = .blue
            self.label.text = "hello"
            self.label.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        }


        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else {
                return
            }
            self.label.frame = CGRect(x: 40, y: 200, width: 40, height: 40)
            self.label.backgroundColor = .blue
            self.label.text = "hello"
            self.label.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)

        }
        UIView.animate(withDuration: 5) {
            self.button.snp.updateConstraints({ (make) in
                make.top.equalTo(self.view.snp.top).offset(300)
            })
            self.button.superview?.layoutIfNeeded()
            //            self.button.frame = CGRect(x: self.button.frame.origin.x, y: 400, width: self.button.frame.size.width, height: self.button.frame.size.height)
        }

        //        DispatchQueue.main.sync {
        //            self.label.backgroundColor = .blue
        //            self.label.text = "hello"
        //            self.label.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        //        }
    }

    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //        let dest = DiscoverController()
        //        present(dest, animated: true, completion: nil)
    }

}

