//
//  GuitarCharacter.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Character Operations

public extension String {

    /// Returns the latinized version of the string without diacritics.
    ///
    ///     let string = "Hello! こんにちは! สวัสดี! مرحبا! 您好!"
    ///     print(string.latinized())
    ///     // Prints "Hello! kon'nichiha! swasdi! mrhba! nin hao!"
    ///
    /// - Returns: The latinized version of the string without diacritics.
    @discardableResult
    func latinized() -> String {
        #if !os(Linux)
            if #available(iOS 9.0, macOS 10.11, tvOS 9.0, watchOS 3.0, *) {
                return (applyingTransform(.toLatin, reverse: false) ?? self).withoutAccents()
            } else {
                assertionFailure("The latinized function is only available iOS 9.0+, macOS 10.11+, tvOS 9.0+, and watchOS 3.0+")
                return self.withoutAccents()
            }
        #else
            assertionFailure("The latinized function is only available for Darwin devices; iOS, macOS, tvOS, watchOS")
            return self.withoutAccents()
        #endif
    }

    /// Retuns the reversed version of the string.
    ///
    ///     let string = "Hello World"
    ///     print(string.reversed())
    ///     // Prints "dlroW olleH"
    ///
    /// - Returns: The reversed copy of the string.
    @discardableResult
    func reversedString() -> String {
        return String(reversed())
    }

    /// Returns the string without diacritics.
    ///
    ///     let string = "Crème brûlée"
    ///     print(string.withoutAccents())
    ///     // Prints "Creme brulee"
    ///
    /// - Returns: The string without diacritics.
    @discardableResult
    func withoutAccents() -> String {
        #if !os(Linux)
            if #available(iOS 9.0, macOS 10.11, tvOS 9.0, watchOS 2.0, *) {
                return (applyingTransform(.stripCombiningMarks, reverse: false) ?? self)
            } else {
                assertionFailure("The withoutAccents function is only available iOS 9.0+, macOS 10.11+, tvOS 9.0+, and watchOS 2.0+")
                return self
            }
        #else
            return folding(options: .diacriticInsensitive, locale: .current)
        #endif
    }
}
