//
//  UIImage+Extision.swift
//  Elegant
//
//  Created by KingCQ on 2016/11/17.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit


extension UIImage {
    /* 缩放 */
    public func resize(size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        draw(in: CGRect(origin: CGPoint.zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    public func zooming(scale: CGFloat) -> UIImage {
        return resize(size: CGSize(width: size.width * scale, height: size.height * scale))
    }
    
}
