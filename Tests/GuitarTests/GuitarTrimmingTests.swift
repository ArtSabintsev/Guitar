//
//  GuitarTrimmingTests.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/2/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarTrimmingTests: XCTestCase {

    static var allTests = [
        ("testPrefixed", testPrefixed),
        ("testSuffixed", testSuffixed),
        ("testTrimLeft", testTrimLeft),
        ("testTrimRight", testTrimRight),
        ("testTruncated", testTruncated)
    ]

    func testPrefixed() {
        XCTAssertEqual("Hello World".trimLeft(byKeeping: 7), "Hello W")
        XCTAssertEqual("Hello_World".trimLeft(byKeeping: 8), "Hello_Wo")
        XCTAssertEqual("HelloWorld".trimLeft(byKeeping: 2), "He")
        XCTAssertEqual("hello-world".trimLeft(byKeeping: 20), "hello-world")
    }

    func testSuffixed() {
        XCTAssertEqual("Hello World".trimRight(byKeeping: 7), "o World")
        XCTAssertEqual("Hello_World".trimRight(byKeeping: 8), "lo_World")
        XCTAssertEqual("HelloWorld".trimRight(byKeeping: 2), "ld")
        XCTAssertEqual("hello-world".trimRight(byKeeping: 20), "hello-world")
    }
    func testTrimLeft() {
        XCTAssertEqual("Hello World".trimLeft(byRemoving: 7), "orld")
        XCTAssertEqual("Hello_World".trimLeft(byRemoving: 8), "rld")
        XCTAssertEqual("HelloWorld".trimLeft(byRemoving: 2), "lloWorld")
        XCTAssertEqual("hello-world".trimLeft(byRemoving: 20), "hello-world")
    }

    func testTrimRight() {
        XCTAssertEqual("Hello World".trimRight(byRemoving: 7), "Hell")
        XCTAssertEqual("Hello_World".trimRight(byRemoving: 8), "Hel")
        XCTAssertEqual("HelloWorld".trimRight(byRemoving: 2), "HelloWor")
        XCTAssertEqual("hello-world".trimRight(byRemoving: 20), "hello-world")
    }

    func testTruncated() {
        XCTAssertEqual("Hello World".truncated(length: 7), "Hell...")
        XCTAssertEqual("Hello_World".truncated(length: 8), "Hello...")
        XCTAssertEqual("HelloWorld".truncated(length: 2), "HelloWorld")
        XCTAssertEqual("hello-world".truncated(length: 20), "hello-world")
    }

}
