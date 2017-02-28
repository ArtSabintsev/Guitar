//
//  Guitar.swift
//  Guitar
//
//  Created by Arthur Sabintsev on 12/21/16.
//
//

import Foundation

// MARK: - Boolean Operations

public extension String {

    func isAlpha() -> Bool {
        return containsCharactersFound(in: .letters)
    }

    func isAlphanumeric() -> Bool {
        return containsCharactersFound(in: .alphanumerics)
    }

    func isCapitalized() -> Bool {
        return self == capitalized
    }

    func isDecpitalized() -> Bool {
        return self == decapitalized()
    }

    func isLowercased() -> Bool {
        return self == lowercased()
    }

    func isNumeric() -> Bool {
        return containsCharactersFound(in: .decimalDigits)
    }

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
    ///     print(string.lowercased())
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

    /// Returns the first character of the string
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

}

// MARK: - Pad Operations

public extension String {

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
        guard padConditionsSatisfied(token: token, length: length) else { return self }

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
        guard padConditionsSatisfied(token: token, length: length) else { return self }

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
    /// - Parameters:
    ///   - length: The length of the string that you'd like to return, starting at the beginning of the string. If the provided length is greater than the original string, the original string is returned.
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
    /// - Parameters:
    ///   - length: The length of the string that you'd like to return, starting at the end of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: A prefixed copy of the string.
    @discardableResult
    func suffixed(length: Int) -> String {
        return String(characters.suffix(length))
    }

    /// Returns the left-trimmed version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.trimLeft(length: 7))
    ///     // Prints "o World"
    ///
    /// - Parameters:
    ///   - length: The number of characters to trim from the beginning of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: The left-trimmed copy of the string.
    @discardableResult
    func trimLeft(length: Int) -> String {
        guard characters.count - length > 0 else { return self }
        return String(characters.suffix(characters.count - length))
    }

    /// Returns the right-trimmed version of the string.
    ///
    /// Example 1:
    ///
    ///     let string = "Hello World"
    ///     print(string.trimRight(length: 7))
    ///     // Prints "Hello"
    ///
    /// - Parameters:
    ///   - length: The number of characters to trim from the end of the string. If the provided length is greater than the original string, the original string is returned.
    /// - Returns: The right-trimmed copy of the string.
    @discardableResult
    func trimRight(length: Int) -> String {
        guard characters.count - length > 0 else { return self }
        return String(characters.prefix(characters.count - length))
    }

}

// MARK: - Helpers

private extension String {

    func padConditionsSatisfied(token: String, length: Int) -> Bool {
        guard length > characters.count else {
            return false
        }

        guard token.characters.count == 1 else {
            return false
        }

        return true
    }

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

    static prefix func - (string: String) -> String {
        return string.replacingOccurrences(of: "_", with: " ").replacingOccurrences(of: "-", with: " ")
    }
    
}
