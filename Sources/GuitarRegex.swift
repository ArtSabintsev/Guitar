//
//  GuitarRegex.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//
//  Adapted from http://benscheirman.com/2014/06/regex-in-swift/

import Foundation

/// Regular Expression Infix Operator Declaration
infix operator =~

/// Regular Expression Infix Operator Definition
///
/// Evaluates if the string matches the pattern.
/// - Parameters:
///     - string: The string that will be evaluated.
///     - pattern: The regular expression pattern to use to evaluate the string.
///
/// - Returns: `true` if string passes evaluation, otherwise, `false`.
public func =~ (string: String, pattern: String) -> Bool {
    return GuitarRegex(pattern: pattern).evaluate(string: string)
}

// MARK - GuitarRegex

/// Encapsulates the regular expression operations performed by the `=~` infix operator.
public struct GuitarRegex {

    /// Regular expression pattern that will be used to evaluate a specific string.
    let pattern: String

    /// Evaluates a string for all instances of a regular expression pattern.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    ///
    /// - Returns: A list of matches.
    func matches(string: String, options: NSRegularExpression.Options = []) -> [NSTextCheckingResult] {
        let range = NSRange(location: 0, length: string.characters.count)
        guard let regex = try? NSRegularExpression(pattern: pattern, options: options) else {
            return []
        }

        return regex.matches(in: string, options: [], range: range)
    }

    /// Evaluates a string for all instances of a regular expression pattern.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    /// 
    /// - Returns: `true` if string passes evaluation, otherwise, `false`.
    func evaluate(string: String, options: NSRegularExpression.Options = []) -> Bool {
        return matches(string: string, options: options).count > 0
    }
}

// MARK: - Regular Expressions (Common Evaluation)

public extension GuitarRegex {
    /// Evaluates a string to check if it is a valid email address by using a regular expression.
    ///
    /// - Parameters:
    ///     - email: The string that needs to be evaluated.
    ///
    /// - Returns: `true` if `string` is a valid email address, otherwise `false`.
    static func isValidEmail(email: String) -> Bool {
        return email =~ "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
    }
}
