//
//  Itemable.swift
//  Elegant
//
//  Created by Steve on 08/09/2017.
//  Copyright © 2017 KingCQ. All rights reserved.
//

import UIKit

protocol Itemable {

    var title: String? { set get }
    var detail: String? {set get }
    var cellType: StaticTableViewCell.Type? {set get }
    var dest: UIViewController.Type? { set get }
}
