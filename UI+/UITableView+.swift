//
//  UITableView+.swift
//  Elegant
//
//  Created by Steve on 2017/5/22.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

extension UITableView {

    ///  Deselects rows. This method will not call the delegate methods (-tableView:didSelectRowAtIndexPath:), nor will it send out a notification.
    ///
    /// - Parameter animated: Animation
    public func deselectAll(animated: Bool) {
        _ = indexPathsForSelectedRows?.map { deselectRow(at: $0, animated: animated) }
    }

    /// Hide the bottom line of the tableView
    public func hideTailLine() {
        tableFooterView = UIView()
    }
}
