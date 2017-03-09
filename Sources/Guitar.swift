//
//  Guitar.swift
//  Guitar
//
//  Created by Arthur Sabintsev on 12/21/16.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

prefix operator -

/// Sanitizes strings by replacing underscores and dashes with whitespaces using the custom `-` prefix operator.
///
/// - Parameter string: The string that will be sanitzed.
/// - Returns: The sanitized string.
prefix func - (string: String) -> String {
    return string.replacingOccurrences(of: "_", with: " ").replacingOccurrences(of: "-", with: " ")
}
