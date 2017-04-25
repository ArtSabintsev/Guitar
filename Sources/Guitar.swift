//
//  Guitar.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK - Guitar

public struct Guitar {
    /// Regular expression pattern that will be used to evaluate a specific string.
    let pattern: String

    /// `fatalError` occurs when using this empty initializer as Guitar must be initialized using `init(pattern:)` or `init(chord:)`.
    public init() {
        fatalError("Guitar must be initialized using `init(pattern:)` or `init(chord:)`.")
    }

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
    ///     - chord: A `chord`, or built-in regex pattern that will be used to perform the match.
    public init(chord: Chord) {
        self.init(pattern: chord.rawValue)
    }

    /// Evaluates a string for all instances of a regular expression pattern and returns a list of matched ranges for that string.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    ///
    /// - Returns: A list of matches.
    public func evaluateForRanges(from string: String, with options: NSRegularExpression.Options = []) -> [Range<String.Index>] {
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

    /// Evaluates a string for all instances of a regular expression pattern and returns a list of matched strings for that string.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    ///
    /// - Returns: A list of matches.
    public func evaluateForStrings(from string: String, with options: NSRegularExpression.Options = []) -> [String] {
        let ranges = evaluateForRanges(from: string)

        var strings: [String] = []
        for range in ranges {
            strings.append(string.substring(with: range))
        }

        return strings
    }

    /// Tests a string to see if it matches the regular expression pattern.
    ///
    /// - Parameters:
    ///     - string: The string that will be evaluated.
    ///     - options: Regular expression options that are applied to the string during matching. Defaults to [].
    /// 
    /// - Returns: `true` if string passes the test, otherwise, `false`.
    public func test(string: String, with options: NSRegularExpression.Options = []) -> Bool {
        return evaluateForRanges(from: string, with: options).count > 0
    }

}
