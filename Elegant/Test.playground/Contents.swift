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
}
var arr = [1, 2, 3, 4]
print(arr.randomArrary)
print(arr.randomArrary)
print(arr.shuffle())

