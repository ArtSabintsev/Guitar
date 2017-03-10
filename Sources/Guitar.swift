//
//  Guitar.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//
//  Adapted from:
//  http://benscheirman.com/2014/06/regex-in-swift/
//  https://www.hackingwithswift.com/example-code/language/how-to-convert-an-nsrange-to-a-swift-string-index

import Foundation

// MARK - Guitar

public struct Guitar {
    /// Common Regular Expression Patterns
    public struct Chord {
        /// Pattern matches email addresses.
        public static let email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"

        /// Pattern matches non-Alphanumeric and non-Whitespace characters.
        public static let nonAlphanumeric = "[^a-zA-Z\\d\\s]"
    }

    /// Regular expression pattern that will be used to evaluate a specific string.
    let chord: String

    /// Designated Initializer for *GuitarRegex*
    ///
    /// - Parameters:
    ///     - chord: The pattern (also known as a `chord`) that will be used to perform the match. Common patterns (or chords) can be found in the `Chord` struct.
    ///
    /// - Returns: A list of matches.
    public init(chord: String) {
        self.chord = chord
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
        guard let regex = try? NSRegularExpression(pattern: chord, options: options) else {
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
        let ranges = Guitar(chord: chord).evaluate(string: string)

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

// MARK: - Regular Expressions (Common Evaluations and Tests)

public extension Guitar {
    /// Tests a string to check if it is a valid email address by using a regular expression.
    ///
    /// - Parameters:
    ///     - email: The string that needs to be evaluated.
    ///
    /// - Returns: `true` if `string` is a valid email address, otherwise `false`.
    static func isValidEmail(email: String) -> Bool {
        return Guitar(chord: Chord.email).test(string: email)
    }

    /// Sanitizes of a string by removing all non-Alphanumeric characters (excluding whitespaces)
    ///
    /// - Parameter string: The string that should be sanitized.
    /// - Returns: The sanitized string.
    static func sanitze(string: String) -> String {
        return Guitar(chord: Chord.nonAlphanumeric).replaceOccurences(in: string, with: " ")
    }
}

// MARK: - NSRange Helpers

private extension NSRange {
    /// Converts NSRange to Range<String.Index>
    ///
    /// - Parameter string: The string from which the NSRange was extracted.
    /// - Returns: The `Range<String.Index>` representation of the NSRange.
    func range(for string: String) -> Range<String.Index>? {
        guard location != NSNotFound else { return nil }

        guard let fromUTFIndex = string.utf16.index(string.utf16.startIndex, offsetBy: location, limitedBy: string.utf16.endIndex) else { return nil }
        guard let toUTFIndex = string.utf16.index(fromUTFIndex, offsetBy: length, limitedBy: string.utf16.endIndex) else { return nil }
        guard let fromIndex = String.Index(fromUTFIndex, within: string) else { return nil }
        guard let toIndex = String.Index(toUTFIndex, within: string) else { return nil }

        return fromIndex ..< toIndex
    }
}
