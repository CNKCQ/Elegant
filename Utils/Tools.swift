//
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import Foundation

// swap two elements'values
func swap<E>( a: inout E, b: inout E) {
    let temp = a
    b = a
    a = temp
}

// find value from array
func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    for (idx, value) in array.enumerated() {
        if value == valueToFind {
            return idx
        }
    }
    return nil
}

func digitParse() {
    let origin = 9.4
    print(ceil(origin), floor(origin), round(origin))
}

extension Array {
    
}
