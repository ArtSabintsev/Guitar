//
//  AppDelegate.swift
//  GuitarExample-TV
//
//  Created by Arthur Sabintsev on 3/2/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import UIKit
import Guitar

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Testing Guitar with one sample function.
        "Hello World".camelCased()
        return true
    }
}
