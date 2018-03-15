//
//  GuitarPadding.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Padding Operations

public extension String {

    /// Returns the center-padded version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.pad(length: 13))
    ///     // Prints " Hello World "
    ///
    /// Example 2:
    ///
    ///     let string = "Hello World"
    ///     print(string.pad(length: 13, withToken: "*"))
    ///     // Prints "*Hello World*"
    ///
    /// - Parameters:
    ///   - length: The final length of your string. If the provided length is less than or equal to the original string, the original string is returned. If the the sum-total of characters added is odd, the left side of the string will have one less instance of the token.
    ///   - token: The string used to pad the String. Must be 1 character in length. Defaults to a white space if the parameter is left blank.
    /// - Returns: The padded copy of the string.
    func pad(length: Int, withToken token: String = " ") -> String {
        guard padConditionsSatisfied(tokenCount: token.count, length: length) else { return self }

        let delta = Int(ceil(Double(length-count)/2))
        return padLeft(length: length-delta, withToken: token).padRight(length: length, withToken: token)
    }

    /// Returns the left-padded version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.padLeft(length: 13))
    ///     // Prints "  Hello World"
    ///
    /// Example 2:
    ///
    ///     let string = "Hello World"
    ///     print(string.padLeft(length: 13, withToken: "*"))
    ///     // Prints "**Hello World"
    ///
    /// - Parameters:
    ///
    ///   - length: The final length of your string. If the provided length is less than or equal to the original string, the original string is returned.
    ///   - token: The string used to pad the String. Must be 1 character in length. Defaults to a white space if the parameter is left blank.
    /// - Returns: The left-padded copy of the string.
    @discardableResult
    func padLeft(length: Int, withToken token: String = " ") -> String {
        guard padConditionsSatisfied(tokenCount: token.count, length: length) else { return self }

        var s = self
        repeat { s.insert(token[token.startIndex], at: startIndex) } while s.count < length
        return s
    }

    /// Returns the right-padded version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.padRight(length: 13))
    ///     // Prints "Hello World  "
    ///
    /// Example 2:
    ///
    ///     let string = "Hello World"
    ///     print(string.padRight(length: 13, withToken: "*", ))
    ///     // Prints "Hello World**"
    ///
    /// - Parameters:
    ///   - length: The final length of your string. If the provided length is less than or equal to the original string, the original string is returned.
    ///   - token: The string used to pad the String. Must be 1 character in length. Defaults to a white space if the parameter is left blank.
    /// - Returns: The right-padded copy of the string.
    @discardableResult
    func padRight(length: Int, withToken token: String = " ") -> String {
        guard padConditionsSatisfied(tokenCount: token.count, length: length) else { return self }

        var s = self
        repeat { s.insert(token[token.startIndex], at: endIndex) } while s.count < length
        return s
    }

}

private extension String {

    /// A Boolean value indicating if all the pre-padding operation conditions are satisfied.
    ///
    /// - Parameters:
    ///   - token: The token that will be used for padding.
    ///   - length: The final length of the string.
    /// - Returns: True, if the string can be padded. Otherise, false.
    func padConditionsSatisfied(tokenCount: Int, length: Int) -> Bool {
        guard length > count, tokenCount == 1 else { return false }
        return true
    }

}
