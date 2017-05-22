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

    func with(_ tintColor: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let context = UIGraphicsGetCurrentContext()
        context?.translateBy(x: 0, y: size.height)
        context?.scaleBy(x: 1.0, y: -1.0)
        context?.setBlendMode(CGBlendMode.normal)
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height) as CGRect
        context?.clip(to: rect, mask: cgImage!)
        tintColor.setFill()
        context?.fill(rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()! as UIImage
        UIGraphicsEndImageContext()
        return newImage
    }
}
