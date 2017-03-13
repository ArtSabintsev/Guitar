//
//  AppDelegate.swift
//  GuitarExample
//
//  Created by Arthur Sabintsev on 12/21/16.
//  Copyright © 2016 Arthur Ariel Sabintsev. All rights reserved.
//

import UIKit
import Guitar

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func applicationDidFinishLaunching(_ application: UIApplication) {
        let x = "HelloWorld"
        print(x.splitWordsByCase())

        let y = "helloWorld"
        print(y.splitWordsByCase())

        let z = "Hello_World"
        print(z.splitWordsByCase())

        let originalString = "NaCuHHe"
        var newStringArray: [String] = []
        for character in originalString.characters {
            if String(character) == String(character).uppercased() {
                newStringArray.append(" ")
            }
            newStringArray.append(String(character))
        }

        let newString = newStringArray.joined().trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .whitespaces).filter({ !$0.isEmpty }).joined(separator: " ")
        print(newString)
        
    }

}
