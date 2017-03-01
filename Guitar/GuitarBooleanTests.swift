//
//  Guitar.swift
//  Guitar
//
//  Created by Arthur Sabintsev on 12/21/16.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Boolean Operations

public extension String {

    /// A Boolean value indicating if all the characters are letters.
    ///
    /// - Returns: True, if all characters are letters. Otherwise, false.
    func isAlpha() -> Bool {
        return containsCharactersFound(in: .letters)
    }

    /// A Boolean value indicating if all the characters are alphanumeric.
    ///
    /// - Returns: True, if all characters are alphanumeric. Otherwise, false.
    func isAlphanumeric() -> Bool {
        return containsCharactersFound(in: .alphanumerics)
    }

    /// A Boolean value indicating if the string is capitalized.
    ///
    /// - Returns: True, if the string is capitalized. Otherwise, false.
    func isCapitalized() -> Bool {
        return self == capitalized
    }

    /// A Boolean value indicating if the string's first character is lowercase.
    ///
    /// - Returns: True, if first character is lowercased. Otherwise, false.
    func isDecapitalized() -> Bool {
        return self == decapitalized()
    }

    /// A Boolean value indicating if all the characters are lowercased.
    ///
    /// - Returns: True, if the string is not capitalized. Otherwise, false.
    func isLowercased() -> Bool {
        return self == lowercased()
    }

    /// A Boolean value indicating if all the characters are numbers.
    ///
    /// - Returns: True, if all characters are numbers. Otherwise, false.
    func isNumeric() -> Bool {
        return containsCharactersFound(in: .decimalDigits)
    }

    /// A Boolean value indicating if all the characters are uppercased.
    ///
    /// - Returns: True, if all characters are uppercased. Otherwise, false.
    func isUppercased() -> Bool {
        return self == uppercased()
    }

}

// MARK: - Case Operations

public extension String {

    /// Returns a camel cased version of the string.
    ///
    /// Example:
    ///
    ///     let string = "HelloWorld"
    ///     print(string.decapitalized())
    ///     // Prints "helloWorld"
    ///
    /// - Returns: A camel cased copy of the string.
    @discardableResult
    func camelCased() -> String {
        return pascalCased().decapitalized()
    }

    /// Returns a decapitalized version of the string.
    ///
    /// Example:
    ///
    ///     let string = "HELLOWORLD"
    ///     print(string.decapitalized())
    ///     // Prints "helloworld"
    ///
    /// - Returns: A decapitalized copy of the string.
    @discardableResult
    func decapitalized() -> String {
        return first().lowercased() + String(characters.dropFirst())
    }

    /// Returns the kebab cased version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.kebabCased())
    ///     // Prints "-Hellow-World-"
    ///
    /// - Returns: The kebab cased copy of the string.
    @discardableResult
    func kebabCased() -> String {
        return "-" + slug() + "-"
    }

    /// Returns a pascal cased version of the string.
    ///
    /// Example:
    ///
    ///     let string = "HELLO WORLD"
    ///     print(string.pascalcased())
    ///     // Prints "HelloWorld"
    ///
    /// - Returns: A pascal cased copy of the string.
    @discardableResult
    func pascalCased() -> String {
        return (-self).components(separatedBy: " ").map({ $0.capitalized }).joined()
    }

    /// Returns the slug version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.slug())
    ///     // Prints "Hello-World"
    ///
    /// - Returns: The slug copy of the string.
    @discardableResult
    func slug() -> String {
        return (-self).replacingOccurrences(of: " ", with: "-").lowercased()
    }

    /// Returns the snake cased version of the string.
    ///
    /// Example:
    ///
    ///     let string = "hello world"
    ///     print(string.slug())
    ///     // Prints "hello_world"
    ///
    /// - Returns: The slug copy of the string.
    @discardableResult
    func snakeCased() -> String {
        return (-self).replacingOccurrences(of: " ", with: "_")
    }

    /// Returns the swap cased version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.swapcased())
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

// MARK: - Character Operations

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
        return String(describing: self[endIndex])
    }

    /// Retuns the reversed version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.reverse())
    ///     // Prints "dlroW olleH"
    ///
    /// - Returns: The reversed copy of the string.
    @discardableResult
    func reverse() -> String {
        return String(characters.reversed())
    }
}

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
    ///     print(string.pad(token: "*", length: 13))
    ///     // Prints "*Hello World*"
    ///
    /// - Parameters:
    ///   - token: The string used to pad the String. Must be 1 character in length. Defaults to a white space if the parameter is left blank.
    ///   - length: The final length of your string. If the provided length is less than or equal to the original string, the original string is returned. If the the sum-total of characters added is odd, the left side of the string will have one less instance of the token.
    /// - Returns: The left-padded copy of the string.
    func pad(token: String = " ", length: Int) -> String {
        guard padConditionsSatisfied(tokenCount: token.characters.count, length: length) else { return self }

        var s = self
        repeat {
            s.padLeft(token: token, length: length)
            s.padRight(token: token, length: length)
        } while s.characters.count < length

        if s.characters.count == length {
            s.trimLeft(length: 1)
        }

        return s
    }

    /// Returns the left-padded version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.padLeft(length: 13))
    ///     // Prints "Hello World  "
    ///
    /// Example 2:
    ///
    ///     let string = "Hello World"
    ///     print(string.padLeft(token: "*", length: 13))
    ///     // Prints "Hello World**"
    ///
    /// - Parameters:
    ///   - token: The string used to pad the String. Must be 1 character in length. Defaults to a white space if the parameter is left blank.
    ///   - length: The final length of your string. If the provided length is less than or equal to the original string, the original string is returned.
    /// - Returns: The left-padded copy of the string.
    @discardableResult
    func padLeft(token: String = " ", length: Int) -> String {
        guard padConditionsSatisfied(tokenCount: token.characters.count, length: length) else { return self }

        var s = self
        repeat { s.insert(token.characters[token.startIndex], at: startIndex) } while s.characters.count < length
        return s
    }

    /// Returns the right-padded version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.padRight(length: 13))
    ///     // Prints "  Hello World"
    ///
    /// Example 2:
    ///
    ///     let string = "Hello World"
    ///     print(string.padRight(token: "*", length: 13))
    ///     // Prints "  Hello World"
    ///
    /// - Parameters:
    ///   - token: The string used to pad the String. Must be 1 character in length. Defaults to a white space if the parameter is left blank.
    ///   - length: The final length of your string. If the provided length is less than or equal to the original string, the original string is returned.
    /// - Returns: The right-padded copy of the string.
    @discardableResult
    func padRight(token: String = " ", length: Int) -> String {
        guard padConditionsSatisfied(tokenCount: token.characters.count, length: length) else { return self }

        var s = self
        repeat { s.insert(token.characters[token.startIndex], at: endIndex) } while s.characters.count < length
        return s
    }

}

// MARK: - Trimming Operations

public extension String {

    /// Returns a prefixed version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.prefixed(length: 7))
    ///     // Prints "Hello W"
    ///
    /// - Parameter length: The length of the string that you'd like to return, starting at the beginning of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: A prefixed copy of the string.
    @discardableResult
    func prefixed(length: Int) -> String {
        return String(characters.prefix(length))
    }

    /// Returns a suffixed version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.prefixed(length: 7))
    ///     // Prints "o World"
    ///
    /// - Parameter length: The length of the string that you'd like to return, starting at the end of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: A prefixed copy of the string.
    @discardableResult
    func suffixed(length: Int) -> String {
        return String(characters.suffix(length))
    }

    /// Returns the left-trimmed version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.trimLeft(length: 7))
    ///     // Prints "o World"
    ///
    /// - Parameter length: The number of characters to trim from the beginning of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: The left-trimmed copy of the string.
    @discardableResult
    func trimLeft(length: Int) -> String {
        guard characters.count - length > 0 else { return self }
        return suffixed(length: characters.count - length)
    }

    /// Returns the right-trimmed version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.trimRight(length: 7))
    ///     // Prints "Hello W"
    ///
    /// - Parameter length: The number of characters to trim from the end of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: The right-trimmed copy of the string.
    @discardableResult
    func trimRight(length: Int) -> String {
        guard characters.count - length > 0 else { return self }
        return prefixed(length: characters.count - length)
    }

    /// Returns the truncated string with an ellipsis.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.truncate(length: 8))
    ///     // Prints "Hello..."
    ///
    /// - Parameter length: The final length of the string, which includes the ellipsis: `...`).
    /// - Returns: The truncated copy of the string.
    @discardableResult
    func truncate(length: Int) -> String {
        guard (length-3) > characters.count else {
            return self
        }

        return trimRight(length: length) + "..."
    }
}

// MARK: - Helpers

private extension String {

    /// A Boolean value indicating if all the pre-padding operation conditions are satisfied.
    ///
    /// - Parameters:
    ///   - token: The token that will be used for padding.
    ///   - length: The final length of the string.
    /// - Returns: True, if the string can be padded. Otherise, false.
    func padConditionsSatisfied(tokenCount: Int, length: Int) -> Bool {
        guard length > characters.count else {
            return false
        }

        guard tokenCount == 1 else {
            return false
        }

        return true
    }

    /// A Boolean value indicating if all the characters in the string belong to a specific `CharacterSet`.
    ///
    /// - Parameter characterSet: The `CharacterSet` used to test the string.
    /// - Returns: True, if all the characters in the string belong to the `CharacterSet`. Otherwise, false.
    func containsCharactersFound(in characterSet: CharacterSet) -> Bool {
        for scalar in unicodeScalars {
            guard characterSet.contains(scalar) else {
                return false
            }
        }
        return true
    }

}

// MARK: - Custom Operators

prefix operator -

private extension String {

    /// Sanitizes strings by replacing underscores and dashes with whitespaces using the custom `-` prefix operator.
    ///
    /// - Parameter string: The string that will be sanitzed.
    /// - Returns: The sanitized string.
    static prefix func - (string: String) -> String {
        return string.replacingOccurrences(of: "_", with: " ").replacingOccurrences(of: "-", with: " ")
    }

}
