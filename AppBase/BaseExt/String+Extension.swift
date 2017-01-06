//
//  String+Extension.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import Foundation

extension String {
    public var length: Int {
        get {
            return characters.count
        }
    }
    
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
    
    var locale: String {
        print(localizedStandardCompare(self), "🌹", NSLocalizedString(self, comment: self))
        return NSLocalizedString(self, tableName: "Default", bundle: Bundle.main, value: "", comment: "")
    }
    
    
}

