//
//  GuitarCharacter.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Character Operations

public extension String {

    /// Returns the first character of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.first())
    ///     // Prints "H"
    ///
    /// - Returns: The first character of the string.
    @discardableResult
    func first() -> String {
        return String(describing: self[startIndex])
    }

    /// Returns the last character of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.last())
    ///     // Prints "d"
    ///
    /// - Returns: The last character of the string.
    @discardableResult
    func last() -> String {
        return reversed().first()
    }

    /// Returns the latinized version of the string without diacritics.
    ///
    ///     let string = "Hello! こんにちは! สวัสดี! مرحبا! 您好!"
    ///     print(string.latinized())
    ///     // Prints "Hello! kon'nichiha! swasdi! mrhba! nin hao!"
    ///
    /// - Returns: The latinized version of the string without diacritics.
    @discardableResult
    func latinized() -> String {
        let mutableString = NSMutableString(string: self) as CFMutableString
        CFStringTransform(mutableString, nil, kCFStringTransformToLatin, false)
        return String(mutableString).withoutAccents()
    }

    /// Returns the character count of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.length())
    ///     // Prints 11
    ///
    /// - Returns: The character count of the string.
    func length() -> Int {
        return characters.count
    }

    /// Retuns the reversed version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.reversed())
    ///     // Prints "dlroW olleH"
    ///
    /// - Returns: The reversed copy of the string.
    @discardableResult
    func reversed() -> String {
        return String(characters.reversed())
    }

    /// Returns the string without diacritics.
    ///
    ///     let string = "Crème brûlée"
    ///     print(string.withoutAccents())
    ///     // Prints "Creme brulee"
    ///
    /// - Returns: The string without diacritics.
    @discardableResult
    func withoutAccents() -> String {
        let mutableString = NSMutableString(string: self) as CFMutableString
        CFStringTransform(mutableString, nil, kCFStringTransformStripCombiningMarks, false)
        return String(mutableString)
    }
}
