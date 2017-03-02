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

    func testPrefixed() {
        XCTAssertEqual("Hello World".prefixed(length: 7), "Hello W")
        XCTAssertEqual("Hello_World".prefixed(length: 8), "Hello_Wo")
        XCTAssertEqual("HelloWorld".prefixed(length: 2), "He")
        XCTAssertEqual("hello-world".prefixed(length: 20), "hello-world")
    }

    func testSuffixed() {
        XCTAssertEqual("Hello World".suffixed(length: 7), "o World")
        XCTAssertEqual("Hello_World".suffixed(length: 8), "lo_World")
        XCTAssertEqual("HelloWorld".suffixed(length: 2), "ld")
        XCTAssertEqual("hello-world".suffixed(length: 20), "hello-world")
    }
    func testTrimLeft() {
        XCTAssertEqual("Hello World".trimLeft(length: 7), "orld")
        XCTAssertEqual("Hello_World".trimLeft(length: 8), "rld")
        XCTAssertEqual("HelloWorld".trimLeft(length: 2), "lloWorld")
        XCTAssertEqual("hello-world".trimLeft(length: 20), "hello-world")
    }

    func testTrimRight() {
        XCTAssertEqual("Hello World".trimRight(length: 7), "Hell")
        XCTAssertEqual("Hello_World".trimRight(length: 8), "Hel")
        XCTAssertEqual("HelloWorld".trimRight(length: 2), "HelloWor")
        XCTAssertEqual("hello-world".trimRight(length: 20), "hello-world")
    }

    func testTruncated() {
        XCTAssertEqual("Hello World".truncated(length: 7), "Hell...")
        XCTAssertEqual("Hello_World".truncated(length: 8), "Hello...")
        XCTAssertEqual("HelloWorld".truncated(length: 2), "HelloWorld")
        XCTAssertEqual("hello-world".truncated(length: 20), "hello-world")
    }

}
