//
//  GuitarCasing.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Case Operations

public extension String {

    /// Returns a camel cased version of the string.
    ///
    ///     let string = "HelloWorld"
    ///     print(string.camelCased())
    ///     // Prints "helloWorld"
    ///
    /// - Returns: A camel cased copy of the string.
    @discardableResult
    func camelCased() -> String {
        return pascalCased().decapitalized()
    }

    /// Returns a capitalized version of the string.
    ///
    /// - Warning: This method is a modified implementation of Swift stdlib's `capitalized` computer variabled.
    ///
    ///     let string = "hello World"
    ///     print(string.capitalized())
    ///     // Prints "Hello World"
    ///
    /// - Returns: A capitalized copy of the string.
    @discardableResult
    func capitalized() -> String {
        let ranges = Guitar(chord: .firstCharacter).evaluateForRanges(from: self)

        var newString = self
        for range in ranges {
            let character = index(range.lowerBound, offsetBy: 0)
            let uppercasedCharacter = String(self[character]).uppercased()
            newString = newString.replacingCharacters(in: range, with: uppercasedCharacter)
        }

        return newString
    }

    /// Returns a decapitalized version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.decapitalized())
    ///     // Prints "hello world"
    ///
    /// - Returns: A decapitalized copy of the string.
    @discardableResult
    func decapitalized() -> String {
        let ranges = Guitar(chord: .firstCharacter).evaluateForRanges(from: self)

        var newString = self
        for range in ranges {
            let character = self[range.lowerBound]
            let lowercasedCharacter = String(character).lowercased()
            newString = newString.replacingCharacters(in: range, with: lowercasedCharacter)
        }

        return newString
    }

    /// Returns the kebab cased (a.k.a. slug) version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.kebabCased())
    ///     // Prints "hello-world"
    ///
    /// - Returns: The kebabg cased copy of the string.
    @discardableResult
    func kebabCased() -> String {
        return Guitar.sanitze(string: self).splitWordsByCase().replacingOccurrences(of: " ", with: "-").lowercased()
    }

    /// Returns a pascal cased version of the string.
    ///
    ///     let string = "HELLO WORLD"
    ///     print(string.pascalCased())
    ///     // Prints "HelloWorld"
    ///
    /// - Returns: A pascal cased copy of the string.
    @discardableResult
    func pascalCased() -> String {
        return Guitar.sanitze(string: self).splitWordsByCase().capitalized().components(separatedBy: .whitespaces).joined()
    }

    /// Returns the snake cased version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.snakeCased())
    ///     // Prints "hello_world"
    ///
    /// - Returns: The snaked cased copy of the string.
    @discardableResult
    func snakeCased() -> String {
        return Guitar.sanitze(string: self).splitWordsByCase().replacingOccurrences(of: " ", with: "_").lowercased()
    }

    /// Splits a string into mutliple words, delimited by uppercase letters.
    ///
    ///     let string = "HelloWorld"
    ///     print(string.splitWordsByCase())
    ///     // Prints "Hello World"
    ///
    /// - Returns: A new string where each word in the original string is delimited by a whitespace.
    @discardableResult
    func splitWordsByCase() -> String {
        var newStringArray: [String] = []
        for character in Guitar.sanitze(string: self).characters {
            if String(character) == String(character).uppercased() {
                newStringArray.append(" ")
            }
            newStringArray.append(String(character))
        }

        return newStringArray
            .joined()
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .components(separatedBy: .whitespaces)
            .filter({ !$0.isEmpty })
            .joined(separator: " ")
    }

    /// Returns the swap cased version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.swapCased())
    ///     // Prints "hELLO wORLD"
    ///
    /// - Returns: The swap cased copy of the string.
    @discardableResult
    func swapCased() -> String {
        return characters.map({
            String($0).isLowercased() ? String($0).uppercased() : String($0).lowercased()
        }).joined()
    }

}
