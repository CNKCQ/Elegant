//
//  UICollectionView+.swift
//  Elegant
//
//  Created by Steve on 2017/5/24.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension UICollectionView {

    /// Returns the items of the collectionView
    public var numberOfItems: Int {
        return (0 ..< numberOfSections).reduce(0) { $0 + numberOfItems(inSection: $1) }
    }
}
