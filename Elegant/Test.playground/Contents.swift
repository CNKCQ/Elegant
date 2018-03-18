//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "hello,playground"

print(str.capitalized)

func gcd(a: TimeInterval, b: TimeInterval) ->  TimeInterval {
    if (a == 0) {
        return b
    }
    return gcd(a: fmod(b, a), b: a)
}

func lcm(a: TimeInterval, b: TimeInterval) -> TimeInterval {
    return a*b/gcd(a: a, b: b)
}
print(gcd(a: 4, b: 6), lcm(a: 3, b: 6))


