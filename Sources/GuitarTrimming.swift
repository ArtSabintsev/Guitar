//
//  GuitarTrimming.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Trimming Operations

public extension String {

    /// Returns a prefixed version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(trimLeft(byKeeping: 7))
    ///     // Prints "Hello W"
    ///
    /// - Parameter length: The length of the string that you'd like to return, starting at the beginning of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: A prefixed copy of the string.
    @discardableResult
    func trimLeft(byKeeping length: Int) -> String {
        return String(characters.prefix(length))
    }

    /// Returns a suffixed version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(trimRight(byKeeping: 7))
    ///     // Prints "o World"
    ///
    /// - Parameter length: The length of the string that you'd like to return, starting at the end of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: A prefixed copy of the string.
    @discardableResult
    func trimRight(byKeeping length: Int) -> String {
        return String(characters.suffix(length))
    }

    /// Returns the left-trimmed version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.trimLeft(byRemoving: length: 7))
    ///     // Prints "o World"
    ///
    /// - Parameter length: The number of characters to trim from the beginning of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: The left-trimmed copy of the string.
    @discardableResult
    func trimLeft(byRemoving length: Int) -> String {
        guard characters.count - length > 0 else { return self }
        return trimRight(byKeeping: characters.count - length)
    }

    /// Returns the right-trimmed version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.trimRight(byRemoving: length: 7))
    ///     // Prints "Hello W"
    ///
    /// - Parameter length: The number of characters to trim from the end of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: The right-trimmed copy of the string.
    @discardableResult
    func trimRight(byRemoving length: Int) -> String {
        guard characters.count - length > 0 else { return self }
        return trimLeft(byKeeping: characters.count - length)
    }

    /// Returns the truncated string with an ellipsis.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.truncated(length: 8))
    ///     // Prints "Hello..."
    ///
    /// - Parameter length: The final length of the string, which includes the ellipsis: `...`).
    /// - Returns: The truncated copy of the string.
    @discardableResult
    func truncated(length: Int) -> String {
        let ellipsis = "..."

        let delta = self.length() - length
        guard delta > 0 else {
            return self
        }

        let lengthWithoutEllipsis = length-ellipsis.length()
        guard lengthWithoutEllipsis > 0 else {
            return self
        }

        return trimLeft(byKeeping: lengthWithoutEllipsis) + ellipsis
    }
}
