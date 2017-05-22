//
//  ListSectionController.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/14.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class ListSectionControllerThreadContext: NSObject {
    var viewController: UIViewController?
    var collectionContext: ListCollectionContext?
}

let listSectionControllerThreadKey = "ListSectionControllerThreadKey"
func threadContextStack() -> Any? {
    let threadDictionary = Thread.current.threadDictionary
    var stack = threadDictionary[listSectionControllerThreadKey]
    if stack == nil {
        stack = []
        threadDictionary.setValue(stack, forKey: listSectionControllerThreadKey)
    }
    return stack
}

open class ListSectionController: NSObject {
    open weak var viewController: UIViewController?
    open weak var collectionContext: ListCollectionContext?
    open var inset: UIEdgeInsets = UIEdgeInsets.zero
    open var minimumLineSpacing: CGFloat = 0.0
    open var minimumInteritemSpacing: CGFloat = 0.0
    open weak var supplementaryViewSource: ListSupplementaryViewSource?
    open weak var displayDelegate: ListDisplayDelegate?
    open weak var workingRangeDelegate: ListWorkingRangeDelegate?
    open weak var scrollDelegate: ListScrollDelegate?
    var hell: NSMapTable<UITableViewDelegate, UITableViewDataSource>?
    override init() {
    }
}
