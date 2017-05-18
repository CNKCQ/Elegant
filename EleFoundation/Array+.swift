//
//  Array+.swift
//  Elegant
//
//  Created by Steve on 2017/5/18.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import Foundation

public extension Array {

    var length: Int {
        return count
    }

}

public extension Array where Element: CustomStringConvertible {

    var toString: String {
        var temp: String = ""
        forEach { e in
            temp  += String(describing: e)
        }
        return temp
    }

}

public extension Array where Element == String {

    var join: String {
        return joined()
    }

}
