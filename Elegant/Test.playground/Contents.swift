//: Playground - noun: a place where people can play

import UIKit

var str = "hello,playground"

print(str.capitalized)

func randomArray () {

}

extension Array {
    var randomArrary: Array {
        return sorted(by: {_,_ in arc4random() < arc4random()})
    }

    mutating func shuffle() -> Array {
        indices.dropLast().forEach {
            guard case let index = Int(arc4random_uniform(UInt32(count - $0))) + $0, index != $0 else { return }
            self.swapAt($0, index)
        }
        return self
    }
}
var arr = [1, 2, 3, 4]
print(arr.randomArrary)
print(arr.randomArrary)
print(arr.shuffle())

