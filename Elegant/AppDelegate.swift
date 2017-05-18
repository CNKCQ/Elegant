//
//  AppDelegate.swift
//  Elegant
//
//  Created by KingCQ on 16/9/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

var con: UIViewController?

//@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let arr = [1, 3, 3, 4]
        print("🌹", arr.toString, "🌹")
        
//        window = UIWindow(frame: UIScreen.main.bounds)
//        let rootController = ViewController()
//        window?.rootViewController = rootController
//        window?.makeKeyAndVisible()
        return true
    }

}
