//
//  GuitarCharacter.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

/// Character Operations
public extension String {

    /// Returns the first character of the string.
    ///
    /// Example:
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

    /// Returns the laster character of the string.
    ///
    /// Example:
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

    /// Returns the character count of the string.
    ///
    /// - Returns: The character count of the string.
    func length() -> Int {
        return characters.count
    }

    /// Retuns the reversed version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.reversedreversed())
    ///     // Prints "dlroW olleH"
    ///
    /// - Returns: The reversed copy of the string.
    @discardableResult
    func reversed() -> String {
        return String(characters.reversed())
    }
}
