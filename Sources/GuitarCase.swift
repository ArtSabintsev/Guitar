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

    /// Returns a capitalized version of the string.
    ///
    /// - Warning: This method is a modified implementation of Swift stdlib's `capitalized` computer variabled.
    ///
    /// Example:
    ///
    ///     let string = "helloworld"
    ///     print(string.capitalized())
    ///     // Prints "HELLOWORLD"
    ///
    /// - Returns: A capitalized copy of the string.
    @available(*, unavailable)
    @discardableResult
    func capitalized() -> String {
        return ""
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
        return "-" + slugCased() + "-"
    }

    /// Returns a pascal cased version of the string.
    ///
    /// Example:
    ///
    ///     let string = "HELLO WORLD"
    ///     print(string.pascalCased())
    ///     // Prints "HelloWorld"
    ///
    /// - Returns: A pascal cased copy of the string.
    @discardableResult
    func pascalCased() -> String {
        return (-self).components(separatedBy: .whitespaces).joined()
    }

    /// Returns the slug version of the string.
    ///
    /// Example:
    ///
    ///     let string = "Hello World"
    ///     print(string.slugCased())
    ///     // Prints "Hello-World"
    ///
    /// - Returns: The slug copy of the string.
    @discardableResult
    func slugCased() -> String {
        return (-self).replacingOccurrences(of: " ", with: "-").lowercased()
    }

    /// Returns the snake cased version of the string.
    ///
    /// Example:
    ///
    ///     let string = "hello world"
    ///     print(string.snakeCased())
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
