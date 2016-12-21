//
//  Guitar.swift
//  Guitar
//
//  Created by Arthur Sabintsev on 12/21/16.
//
//

import Foundation

public extension String {

    @discardableResult
    func camelCased() -> String {
        return pascalCased().decapitalized()
    }

    @discardableResult
    func decapitalized() -> String {
        return first().lowercased() + String(self.characters.dropFirst())
    }

    @discardableResult
    func first() -> String {
        return String(describing: self[startIndex])
    }

    @discardableResult
    func kebabCased() -> String {
        return "-" + slug() + "-"
    }

    @discardableResult
    func last() -> String {
        return String(describing: self[endIndex])
    }

    @discardableResult
    func pascalCased() -> String {
        return (-self).components(separatedBy: " ").map({ $0.capitalized }).joined()
    }

    @discardableResult
    func slug() -> String {
        return (-self).replacingOccurrences(of: " ", with: "-").lowercased()
    }

    @discardableResult
    func snakeCased() -> String {
        return (-self).replacingOccurrences(of: " ", with: "_")
    }

}

// MARK: Boolean Operations

public extension String {

    func isCapitalized() -> Bool {
        return self == self.capitalized
    }

    func isDecpitalized() -> Bool {
        return self == self.decapitalized()
    }

    func isLowercased() -> Bool {
        return self == self.lowercased()
    }

    func isUppercased() -> Bool {
        return self == self.uppercased()
    }

}

// MARK: Custom Operators
prefix operator -

private extension String {

    static prefix func - (string: String) -> String {
        return string.replacingOccurrences(of: "_", with: " ").replacingOccurrences(of: "-", with: " ")
    }

}
