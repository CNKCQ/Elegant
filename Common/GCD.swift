//
//  GCD.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/14.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import Foundation

func delay(after: TimeInterval, execute: @escaping () -> Void) {
    let delayTime = DispatchTime.now() + after
    DispatchQueue.main.asyncAfter(deadline: delayTime) {
        execute()
    }
}
