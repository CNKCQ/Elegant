//
//  UIFont+.swift
//  Elegant
//
//  Created by Steve on 2017/5/22.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

// MARK: -  System fonts
public extension UIFont {

    public class var labelFont: UIFont {
        return systemFont(ofSize: labelFontSize)
    }

    public class var buttonFont: UIFont {
        return systemFont(ofSize: buttonFontSize)
    }

    public class var smallSystemFont: UIFont {
        return systemFont(ofSize: smallSystemFontSize)
    }

    public class var systemFont: UIFont {
        return systemFont(ofSize: systemFontSize)
    }
}
