//
//  GuitarRegex.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//
//  Adapted from http://benscheirman.com/2014/06/regex-in-swift/

import Foundation

// MARK: - Regular Expression (Common Patterns)

/// Common Regular Expression Patterns
public struct GuitarPatterns {
    /// Pattern matches email addresses.
    public static let email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"

    /// Pattern matches non-Alphanumeric and non-Whitespace characters.
    public static let nonAlphanumeric = "[^a-zA-Z\\d\\s]"
}

// MARK - GuitarRegex

public struct GuitarRegex {

    /// Regular expression pattern that will be used to evaluate a specific string.
    let pattern: String

    /// Designated Initializer for *GuitarRegex*
    ///
    /// - Parameters:
    ///     - pattern: The pattern that will be used to perform the match.
    ///
    /// - Returns: A list of matches.
    public init(pattern: String) {
        self.pattern = pattern
    }

    /// Tests a string to see if it matches the regular expression pattern.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    ///
    /// - Returns: A list of matches.
    public func evaluate(string: String, options: NSRegularExpression.Options = []) -> [NSTextCheckingResult] {
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
    public func test(string: String, options: NSRegularExpression.Options = []) -> Bool {
        return evaluate(string: string, options: options).count > 0
    }
}

// MARK: - Regular Expressions (Common Evaluations)

public extension GuitarRegex {
    /// Evaluates a string to check if it is a valid email address by using a regular expression.
    ///
    /// - Parameters:
    ///     - email: The string that needs to be evaluated.
    ///
    /// - Returns: `true` if `string` is a valid email address, otherwise `false`.
    static func isValidEmail(email: String) -> Bool {
        return GuitarRegex(pattern: email).test(string: GuitarPatterns.email)
    }
}
