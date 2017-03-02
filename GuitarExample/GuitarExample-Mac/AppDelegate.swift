//
//  AppDelegate.swift
//  GuitarExample-Mac
//
//  Created by Arthur Sabintsev on 3/2/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Cocoa
import Guitar

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Testing Guitar with one sample function.
        "Hello World".camelCased()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

