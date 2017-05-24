//
//  UIAlertController+.swift
//  Elegant
//
//  Created by Steve on 2017/5/24.
//  Copyright © 2017年 KingCQ. All rights reserved.
//

import UIKit

func alert(
    title: String,
    message: String,
    cancelAction: ((UIAlertAction?) -> Void)? = nil,
    okAction: ((UIAlertAction?) -> Void)? = nil) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    if let ok = okAction {
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: ok))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: cancelAction))
    } else {
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: cancelAction))
    }
    UIWindow.visibleViewController.present(alert, animated: true, completion: nil)
}

func actionSheet(
    title: String,
    message: String,
    actions: [UIAlertAction]) {
    let sheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    actions.forEach({ sheet.addAction($0) })
    UIWindow.visibleViewController.present(sheet, animated: true, completion: nil)
}
