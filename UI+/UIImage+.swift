//
//  UIImage+.swift
//  Elegant
//
//  Created by Steve on 2017/5/22.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension UIImage {

    /// Returns base64 string
    var base64: String? {
        return UIImageJPEGRepresentation(self, 1.0)?.base64EncodedString()
    }

    /// Image are created with tintColor.
    /// - Parameter tintColor: UIColor
    /// - Returns: A new image
    @discardableResult
    class func image(with color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        UIGraphicsBeginImageContext(size)
        color.set()
        UIRectFill(CGRect(origin: CGPoint.zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
