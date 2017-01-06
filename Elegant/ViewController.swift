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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        let button = UIButton(frame: CGRect(x: 20, y: 60, width: 200, height: 44))
        button.backgroundColor = UIColor.red
        view.addSubview(button)
        
        
    }
    
    func click() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let dest = DiscoverController()
        present(dest, animated: true, completion: nil)
    }
    
}
