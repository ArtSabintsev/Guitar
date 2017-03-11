//
//  GuitarBooleanTests.swift
//  GuitarExampleTests
//
//  Created by Sabintsev, Arthur on 3/1/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarBooleanTests: XCTestCase {

    func testIsAlpha() {
        XCTAssertTrue("HelloWorld".isAlpha())
        XCTAssertFalse("Hell0World".isAlpha())
        XCTAssertFalse("Hello World".isAlpha())
        XCTAssertFalse("-Hello_World-".isAlpha())
    }

    func testIsAlphanumeric() {
        XCTAssertTrue("HelloWorld".isAlphanumeric())
        XCTAssertTrue("Hell0W0rld".isAlphanumeric())
        XCTAssertFalse("Hello-World".isAlphanumeric())
        XCTAssertFalse("-Hello_World-".isAlpha())
    }

    func testIsCapitalized() {
        XCTAssertTrue("Helloworld".isCapitalized())
        XCTAssertTrue("Hell0W0rld".isCapitalized())
        XCTAssertTrue("-Hello_World-".isCapitalized())
        XCTAssertFalse("hello-World".isCapitalized())
    }

    func testIsDecapitalized() {
        XCTAssertTrue("helloworld".isDecapitalized())
        XCTAssertFalse("Hell0w0rld".isDecapitalized())
        XCTAssertFalse("Hello-World".isDecapitalized())
        XCTAssertTrue("-hello_world-".isDecapitalized())
    }

    func testIsLowercased() {
        XCTAssertTrue("helloworld".isLowercased())
        XCTAssertTrue("hello world".isLowercased())
        XCTAssertFalse("Helloworld".isLowercased())
        XCTAssertFalse("Hell0w0rld".isLowercased())
        XCTAssertFalse("hello-World".isLowercased())
        XCTAssertFalse("-hello_World-".isLowercased())
    }

    func testIsNumeric() {
        XCTAssertTrue("43770".isNumeric())
        XCTAssertFalse("Helloworld".isNumeric())
        XCTAssertFalse("Hell0w0rld".isNumeric())
        XCTAssertFalse("hello-World".isNumeric())
        XCTAssertFalse("-Hello_World-".isNumeric())
    }

    func testIsUppercased() {
        XCTAssertTrue("HELLOWORLD".isUppercased())
        XCTAssertTrue("HELL0W0RLD".isUppercased())
        XCTAssertTrue("-HELLO_WORLD-".isUppercased())
        XCTAssertFalse("HELLoWoRLD".isUppercased())
    }

}
