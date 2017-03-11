//
//  GuitarCasing.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

/// Case Operations
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
        let ranges = Guitar(chord: .firstCharacter).evaluate(string: self)

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
        let ranges = Guitar(chord: Guitar.Chord.firstCharacter).evaluate(string: self)

        var newString = self
        for range in ranges {
            let character = self[range.lowerBound]
            let lowercasedCharacter = String(character).lowercased()
            newString = newString.replacingCharacters(in: range, with: lowercasedCharacter)
        }

        return newString

    }

    /// Returns the kebab cased version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.kebabCased())
    ///     // Prints "-Hellow-World-"
    ///
    /// - Returns: The kebab cased copy of the string.
    @discardableResult
    func kebabCased() -> String {
        return "-" + slugCased() + "-"
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
        return Guitar.sanitze(string: self).capitalized().components(separatedBy: .whitespaces).joined()
    }

    /// Returns the slug cased version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.slugCased())
    ///     // Prints "Hello-World"
    ///
    /// - Returns: The slug cased copy of the string.
    @discardableResult
    func slugCased() -> String {
        return Guitar.sanitze(string: self).replacingOccurrences(of: " ", with: "-").lowercased()
    }

    /// Returns the snake cased version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.snakeCased())
    ///     // Prints "Hello_World"
    ///
    /// - Returns: The snaked cased copy of the string.
    @discardableResult
    func snakeCased() -> String {
        return Guitar.sanitze(string: self).replacingOccurrences(of: " ", with: "_")
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
