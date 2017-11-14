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

//print([1,1,1,2,2,2,3,3,3,4].uniq)
//print([1,1,1,2,2,2,3,3,3,4].uniq)
//
//print(CGFloat(100)/CGFloat(512))

let b = Float64(Int64(10)) / Float64(Int64(3))

public extension UIColor {
    
    convenience init(r : CGFloat, g : CGFloat, b : CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
    
    static var random: UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
    
    var components: [CGFloat] {
        var (r, g, b, a): (CGFloat, CGFloat, CGFloat, CGFloat) = (0.0, 0.0, 0.0, 0.0)
        getRed(&r, green: &g, blue: &b, alpha: &a)
        return [r, g, b, a]
    }
}


let black = UIColor.black
//let gray = UIColor.gray
//let gray1 = UIColor(r: 125, g: 125, b: 0)
let lightGray = UIColor.lightGray
//let green = UIColor.green
//let blue = UIColor.blue
//let white = UIColor.white
//let brown = UIColor.brown
//let yellow = UIColor.yellow
//let purple = UIColor.purple
let rgb = UIColor(displayP3Red: 2/255, green: 255/255, blue: 255/255, alpha: 1)


print(rgb.components)

//print(gray.cgColor.components)
print(lightGray.cgColor.components)






public extension Array where Element: Equatable {
    
    /// The index method returns the first index at which a given element can be found in the array, or -1 if it is not present.
    ///
    /// - Parameter element: a given element
    /// - Returns: The index of the element at the array
    @discardableResult
    func index(of element: Element) -> Int {
        return index(of: element) ?? -1
    }
    
    /// Remove first collection element that is equal to the given `object`:
    ///
    /// - Parameter object: The element will remove form the array
    mutating func remove(_ object: Element) {
        if index(of: object) >= 0 {
            remove(at: index(of: object))
        }
    }
}

var arr = [1, 3, 5]
let arrnew = arr
arrnew


