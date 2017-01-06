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
//        let tab = self.window?.rootViewController! as! UITabBarController
//        let nav = tab.childViewControllers.first as! UINavigationController
//        let derived = nav.topViewController! as! ViewController
//        _ = ViewController(nibName: "home", bundle: Bundle.main)
//        let board = UIStoryboard(name: "Main", bundle: Bundle.main)
//        con = board.instantiateViewController(withIdentifier: "home") as! ViewController
        print(con, "🌹")
        
//        window = UIWindow(frame: UIScreen.main.bounds)
//        let rootController = ViewController()
//        window?.rootViewController = rootController
//        window?.makeKeyAndVisible()
        return true
    }

}
