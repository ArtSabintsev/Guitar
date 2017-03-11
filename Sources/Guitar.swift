//
//  Guitar.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//
//  Adapted from: http://benscheirman.com/2014/06/regex-in-swift/

import Foundation

// MARK - Guitar

public struct Guitar {
    /// Regular expression pattern that will be used to evaluate a specific string.
    let pattern: String

    /// Designated Initializer for `Guitar`
    ///
    /// - Parameters:
    ///     - pattern: The pattern that will be used to perform the match.
    public init(pattern: String) {
        self.pattern = pattern
    }

    /// Delegating Initializer for `Guitar`
    ///
    /// - Parameters:
    ///     - chord: The `chord`, or build-in regex pattern that will be used to perform the match.
    public init(chord: GuitarChord) {
        self.init(pattern: chord.rawValue)
    }

    /// Evaluates a string for all instances of a regular expression pattern.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    ///
    /// - Returns: A list of matches.
    public func evaluate(string: String, options: NSRegularExpression.Options = []) -> [Range<String.Index>] {
        let range = NSRange(location: 0, length: string.characters.count)
        guard let regex = try? NSRegularExpression(pattern: pattern, options: options) else {
            return []
        }

        let matches = regex.matches(in: string, options: [], range: range)

        let ranges = matches.flatMap { (match) -> Range<String.Index>? in
            let nsRange = match.range
            return nsRange.range(for: string)
        }

        return ranges
    }

    public func replaceOccurences(in string: String, with character: String) -> String {
        let ranges = Guitar(pattern: pattern).evaluate(string: string)

        var newString = string
        for range in ranges {
            newString.replaceSubrange(range, with: character)
        }

        return newString
    }

    /// Tests a string to see if it matches the regular expression pattern.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    /// 
    /// - Returns: `true` if string passes the test, otherwise, `false`.
    public func test(string: String, options: NSRegularExpression.Options = []) -> Bool {
        return evaluate(string: string, options: options).count > 0
    }
}

// MARK: - Common Evaluations and Tests

public extension Guitar {
    /// Tests a string to check if it is a valid email address by using a regular expression.
    ///
    /// - Parameters:
    ///     - email: The string that needs to be evaluated.
    ///
    /// - Returns: `true` if `string` is a valid email address, otherwise `false`.
    static func isValidEmail(email: String) -> Bool {
        return Guitar(chord: .email).test(string: email)
    }

    /// Sanitizes of a string by removing all non-Alphanumeric characters (excluding whitespaces)
    ///
    /// - Parameter string: The string that should be sanitized.
    /// - Returns: The sanitized string.
    static func sanitze(string: String) -> String {
        return Guitar(chord: .nonAlphanumeric).replaceOccurences(in: string, with: " ").trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
