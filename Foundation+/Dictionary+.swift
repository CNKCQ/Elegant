//
//  Dictionary+.swift
//  Elegant
//
//  Created by Steve on 2017/5/18.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import Foundation

extension Dictionary {

    /// Returns an element from this sequence shuffled
    var random: Value {
        return Array(self.values).random
    }

    /// The number of key-value pairs in the dictionary.
    var size: Int {
        return count
    }
}

extension Dictionary {

    /// Removes all key-value pairs from the dictionary.
    mutating func clear() {
         self.removeAll()
    }

    /// Removes the given key and its associated value from the dictionary.
    ///
    /// - Parameter key: The key to remove along with its associated value.
    mutating func delete(_ key: Dictionary.Key) {
        self.removeValue(forKey: key)
    }

    /// The entries() method returns a new Iterator object that contains the [key, value] pairs for each element in the Dictionary object in insertion order.
    ///
    /// - Returns: A new dictionary iterator object.
    @discardableResult
    func entries() -> [(Dictionary.Key, Dictionary.Value)] {
        return self.flatMap({($0.key, $0.value)})
    }

    /// The has() method returns a boolean indicating whether an element with the specified key exists or not.
    ///
    /// - Parameter key: Required. The key of the element to test for presence in the Dictionary object.
    /// - Returns: Returns true if an element with the specified key exists in the Dictionary object; otherwise false.
    @discardableResult
    func has(_ key: Dictionary.Key) -> Bool {
        return self.keys.contains(key)
    }
    
}
