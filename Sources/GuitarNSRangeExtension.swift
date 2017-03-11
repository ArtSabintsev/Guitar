//
//  GuitarNSRangeExtension.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/11/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//
// Adapted from: https://www.hackingwithswift.com/example-code/language/how-to-convert-an-nsrange-to-a-swift-string-index

import Foundation

// MARK: - NSRange Extensions

extension NSRange {
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
