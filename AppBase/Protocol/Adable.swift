//
//  Adable.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/11.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import Foundation

protocol Adable: class {
    var imageUrl: String { set get }
    var detail: String { set get }
}

extension Adable {
    var imageUrl: String {
        return ""
    }
    var detail: String {
        return ""
    }
}
