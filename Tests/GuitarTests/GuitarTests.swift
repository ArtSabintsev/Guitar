//
//  GuitarTests.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarTests: XCTestCase {

    static var allTests = [
        ("testEmailMatching", testEmailMatching),
        ("testFirstCharacter", testFirstCharacter),
        ("testLastCharacter", testLastCharacter),
        ("testNonAlphanumericMatching", testNonAlphanumericMatching),
        ("testNonAlphanumericSpaceMatching", testNonAlphanumericSpaceMatching),
        ("testNonAlphanumericSpaceMatching", testNonAlphanumericSpaceMatching),
        ("testIsValidEmail", testIsValidEmail),
        ("testSanitize", testSanitize)
    ]

    func testEmailMatching() {
        XCTAssertEqual(Guitar(chord: .email).evaluateForRanges(from: "This is one email address: arthur@sabintsev.com. This is another [arthur@example.com].").count, 2)
    }

    func testFirstCharacter() {
        let string = "Hello World, and Hello Guitar Users!"
        XCTAssertEqual(Guitar(chord: .firstCharacter).evaluateForStrings(from: string), ["H", "W", "a", "H", "G", "U"])
    }

    func testLastCharacter() {
        let string = "Hello World, and Hello Guitar Users!"
        XCTAssertEqual(Guitar(chord: .lastCharacter).evaluateForStrings(from: string), ["o", "d", "d", "o", "r", "s"])
    }

    func testNonAlphanumericMatching() {
        let string = "Hello World, and Hello Guitar Users! ^_^"
        let newString = Guitar(chord: .nonAlphanumeric).replaceOccurences(in: string, with: "*")
        XCTAssertEqual(newString, "Hello*World**and*Hello*Guitar*Users*****")
    }

    func testNonAlphanumericSpaceMatching() {
        let string = "Hello World, and Hello Guitar Users! ^_^"
        let newString = Guitar(chord: .nonAlphanumericSpace).replaceOccurences(in: string, with: "*")
        XCTAssertEqual(newString, "Hello World* and Hello Guitar Users* ***")
    }

    func testIsValidEmail() {
        XCTAssertTrue(Guitar.isValidEmail(email: "arthur@sabintsev.com"))
        XCTAssertTrue(Guitar.isValidEmail(email: "arthur.sabintsev@example.com"))
        XCTAssertFalse(Guitar.isValidEmail(email: "arthur.sabintsev@example"))
        XCTAssertFalse(Guitar.isValidEmail(email: "arthur.sabintsev@x.y.z"))
    }

    func testSanitize() {
        let string = "Hello, World! This is Arthur. My email is arthur@sabintsev.com! Who misses Obj-C []?"
        let newString = Guitar.sanitze(string: string)
        XCTAssertEqual(newString, "Hello  World  This is Arthur  My email is arthur sabintsev com  Who misses Obj C")
    }

}
