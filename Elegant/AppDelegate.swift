//
//  AppDelegate.swift
//  Elegant
//
//  Created by KingCQ on 16/9/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

var con: UIViewController?

// @UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //        let arr = ["1", "3", "2", "4", "5", "6"]
        //        print("🌹", arr.random, "🌹", arr.shuffled)

        let dic = ["1": "one", "3": "three", "2": "two", "4": "four", "5": "five", "6": "six"]
        print("🌹", dic.entries(), "🌹")
        array()

        //        window = UIWindow(frame: UIScreen.main.bounds)
        //        let rootController = ViewController()
        //        window?.rootViewController = rootController
        //        window?.makeKeyAndVisible()
        return true
    }

    @discardableResult
    func array() -> [String] {
        return ["", ""]
    }
}
