//
//  GuitarHelpers.swift
//  GuitarExample
//
//  Created by Arthur Sabintsev on 4/10/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

// MARK: - Helper Functions

extension Guitar {

    /// Replace specific ranges in a string with a specific character.
    ///
    /// - Parameters:
    ///   - string: The string that will be manipulated.
    ///   - character: The character that is injected in certain ranges within the original string.
    /// - Returns: A new string based on the old string, but with specific ranges containing a different character.
    func replaceOccurences(in string: String, with character: String) -> String {
        let ranges = Guitar(pattern: pattern).evaluateForRanges(from: string)

        var newString = string
        for range in ranges {
            newString.replaceSubrange(range, with: character)
        }

        return newString
    }

}
