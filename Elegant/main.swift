//
//  main.swift
//  Elegant
//
//  Created by KingCQ on 2016/12/2.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

// The following is required because there's an impedence mismatch between
// `CommandLine` and `UIApplicationMain` <rdar://problem/25693546>.
let argv = UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(
    to: UnsafeMutablePointer<Int8>.self,
    capacity: Int(CommandLine.argc)
)
UIApplicationMain(CommandLine.argc, argv, nil, NSStringFromClass(AppDelegate.self))
