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
        _ = indexPathsForSelectedRows?.map {
            deselectRow(at: $0, animated: animated)
        }
    }

    /// Hide the bottom line of the tableView
    public func hideTailLine() {
        tableFooterView = UIView()
    }

    /// http://blog.sunnyxx.com/2015/04/15/ios-hide-grouped-tableview-header/
    /// Remove the gap of TableView's header
    public func removeGroupGap() {
        tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: CGFloat.leastNormalMagnitude))
    }

    /// Returns the items of the tableView
    public var numberOfItems: Int {
        return (0 ..< numberOfSections).reduce(0) {
            $0 + numberOfRows(inSection: $1)
        }
    }
}

// MARK: Reusable support for UITableView

public extension UITableView {

    /// Register a Class-Based `UITableViewCell` subclass (conforming to `Reusable`)
    ///
    /// - Parameter cellType: the `UITableViewCell` (`Reusable`-conforming) subclass to register
    final func registerReusableCell<T: UITableViewCell>(cellType: T.Type) where T: Reusable {
        register(cellType.self, forCellReuseIdentifier: cellType.reuseIdentifier)
    }

    /// Returns a reusable `UITableViewCell` object for the class inferred by the return-type
    ///
    /// - Parameters:
    ///   - indexPath: The index path specifying the location of the cell.
    ///   - cellType: The cell class to dequeue
    /// - Returns: A `Reusable`, `UITableViewCell` instance
    final func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath, cellType: T.Type = T.self) -> T where T: Reusable {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError(
                "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) matching type \(cellType.self). "
                    + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
                    + "and that you registered the cell beforehand"
            )
        }
        return cell
    }

    /// Register a Class-Based `UITableViewHeaderFooterView` subclass (conforming to `Reusable`)
    ///
    /// - Parameter viewType: the `UITableViewHeaderFooterView` (`Reusable`-confirming) subclass to register
    final func registerReusableHeaderFooterView<T: UITableViewHeaderFooterView>(viewType: T.Type) where T: Reusable {
        register(viewType.self, forHeaderFooterViewReuseIdentifier: viewType.reuseIdentifier)
    }

    /// Returns a reusable `UITableViewHeaderFooterView` object for the class inferred by the return-type
    ///
    /// - Parameter viewType: The view class to dequeue
    /// - Returns: A `Reusable`, `UITableViewHeaderFooterView` instance
    final func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(viewType: T.Type = T.self) -> T? where T: Reusable {
        guard let view = self.dequeueReusableHeaderFooterView(withIdentifier: viewType.reuseIdentifier) as? T? else {
            fatalError(
                "Failed to dequeue a header/footer with identifier \(viewType.reuseIdentifier) matching type \(viewType.self). "
                    + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
                    + "and that you registered the header/footer beforehand"
            )
        }
        return view
    }

}
