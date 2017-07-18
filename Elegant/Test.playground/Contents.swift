//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "hello,playground"

print(str.capitalized)

func randomArray () {

}

extension Array {
    var randomArrary: Array {
        return sorted(by: {_,_ in arc4random() < arc4random()})
    }
}
//var arr = [1, 2, 3, 4]
//print(arr.randomArrary)
//print(arr.randomArrary)

extension Sequence where Iterator.Element: Hashable {

    var unique: [Iterator.Element] {
        var seen: [Iterator.Element: Bool] = [:]
        return self.filter { seen.updateValue(true, forKey: $0) == nil }
    }

    var uniq: [Iterator.Element] {
        return Array(Set(self))
    }
}

extension Array {

    func map<T>(_ transform: (Element)-> T) -> [T] {
        var result: [T] = []
        self.forEach { (e) in
            result.append(transform(e))
        }
        return result
    }

    func  filter<T>(_ includeElement: (Element) -> Bool) -> [T] {
        var result: [T] = []
        for x in self where includeElement(x){
            if let item = x as? T {
                result.append(item)
            }
        }
        return result
    }


    /// 数组降维
    func concat() -> Array<Any> {
        var subs: [Any] = []
        self.forEach { (sub) in
            if let suba = sub as? Array<Any> {
                subs += suba.concat()
            } else {
                subs.append(sub)
            }
        }
        return subs
    }
}

print([1,1,1,2,2,2,3,3,3,4].uniq)
print([1,1,1,2,2,2,3,3,3,4].uniq)
print([1,1,1,2,2,2,3,3,3,4].uniq)

print([[3, 4], [5, "St"], [7, 8],[9, 10, [11, 12, 13, [14, 15, [16, 17, 18]]]]].concat())




