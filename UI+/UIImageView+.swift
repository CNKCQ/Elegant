//
//  UIImageView+.swift
//  Elegant
//
//  Created by Steve on 2017/5/22.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension UIImageView {

    /// ImageView are created with an iamge witch is instance by a `String`
    public convenience init?(imageNamed: String) {
        self.init(image: UIImage(named: imageNamed))
    }
}
