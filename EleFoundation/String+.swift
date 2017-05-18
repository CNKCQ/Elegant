//
//  String+.swift
//  Elegant
//
//  Created by Steve on 2017/5/18.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import Foundation

extension String {

    /// The string length property returns the count of character in the string.
    var length: Int {
        return characters.count
    }

    /// Returns a localized string, using the main bundle.
    var locale: String {
        return NSLocalizedString(self, tableName: "Default", bundle: Bundle.main, value: "", comment: "")
    }

}

extension String {

    subscript(index: Int) -> Character {
        var i = index
        if i < 0 { // 支持 "abc"[-1] == "c" 这样的用法
            i = length - abs(index)
        }
        return self[self.index(startIndex, offsetBy: i)]
    }

    public subscript(range: Range<Int>) -> String {
        return substring(with: index(startIndex, offsetBy: range.lowerBound)..<index(startIndex, offsetBy: range.upperBound))
    }

    public func stringByInsert(string: String) -> String? {
        let regex = try? NSRegularExpression(pattern: "\\w", options: [])
        return regex?.stringByReplacingMatches(in: self, options: [], range: NSRange(location: 0, length: length), withTemplate: "$0\(string)").trimmed(set: .whitespacesAndNewlines)
    }

    public func trimmed(set: CharacterSet = .whitespaces) -> String {
        return trimmingCharacters(in: set)
    }

    public func camelCaseString(separator: String = "_") -> String {
        if isEmpty {
            return self
        }
        let first = self[0]
        var rest = capitalized.replacingOccurrences(of: separator, with: "")
        rest.remove(at: startIndex)
        return "\(first)\(rest)"
    }

}
