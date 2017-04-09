//
//  GuitarBoolean.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Boolean Operations

public extension String {

    /// A Boolean value indicating if all the characters are letters.
    ///
    /// - Returns: `true`, if all characters are letters. Otherwise, `false`.
    func isAlpha() -> Bool {
        return containsCharactersFound(in: .letters)
    }

    /// A Boolean value indicating if all the characters are alphanumeric.
    ///
    /// - Returns: `true`, if all characters are alphanumeric. Otherwise, `false`.
    func isAlphanumeric() -> Bool {
        return containsCharactersFound(in: .alphanumerics)
    }

    /// A Boolean value indicating if the first characters in all of the words in the string are uppercased.
    ///
    /// - Returns: `true`, if the string is capitalized. Otherwise, `false`.
    func isCapitalized() -> Bool {
        return self == capitalized()
    }

    /// A Boolean value indicating if the first characters in all of the words in the string are lowercased.
    ///
    /// - Returns: `true`, if first character is lowercased. Otherwise, `false`.
    func isDecapitalized() -> Bool {
        return self == decapitalized()
    }

    /// A Boolean value indicating if all the characters are lowercased.
    ///
    /// - Returns: `true`, if the string is not capitalized. Otherwise, `false`.
    func isLowercased() -> Bool {
        return self == lowercased()
    }

    /// A Boolean value indicating if all the characters are numbers.
    ///
    /// - Returns: `true`, if all characters are numbers. Otherwise, `false`.
    func isNumeric() -> Bool {
        return containsCharactersFound(in: .decimalDigits)
    }

    /// A Boolean value indicating if all the characters are uppercased.
    ///
    /// - Returns: `true`, if all characters are uppercased. Otherwise, `false`.
    func isUppercased() -> Bool {
        return self == uppercased()
    }

}

// MARK: - Helpers

private extension String {

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
