//
//  ViewController.swift
//  Elegant
//
//  Created by KingCQ on 2016/12/2.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit
import RxCocoa

class ViewController: UIViewController {
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 20, y: 70, width: 200, height: 44))
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        button.backgroundColor = UIColor.green
        //        button.addDashedBorder(dashPattern: [6, 3])
        view.addLine(start: CGPoint(x: 10, y: 80), end: CGPoint(x: 300, y: 400))
        view.addSubview(button)
        label = UILabel(frame: CGRect(x: 100, y: 120, width: 120, height: 60))
        label.backgroundColor = .red
        view.addSubview(label)
    }

    @objc func click() {
        DispatchQueue.main.async {
            self.label.frame = CGRect(x: 40, y: 200, width: 40, height: 40)
            self.label.backgroundColor = .blue
            self.label.text = "hello"
            self.label.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
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
