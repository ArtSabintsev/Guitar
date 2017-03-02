//
//  GuitarCharacterTests.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/1/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarCharacterTests: XCTestCase {

    func testFirst() {
        XCTAssertEqual("Hello World".first(), "H")
        XCTAssertEqual("4ello World".first(), "4")
        XCTAssertEqual("-Hello World".first(), "-")
    }

    func testLast() {
        XCTAssertEqual("Hello World".last(), "d")
        XCTAssertEqual("4ello Worl6".last(), "6")
        XCTAssertEqual("-Hello_World-".last(), "-")
    }

    func testReversed() {
        XCTAssertEqual("Hello World".reversed(), "dlroW olleH")
        XCTAssertEqual("4ello Worl6".reversed(), "6lroW olle4")
        XCTAssertEqual("-Hello_World-".reversed(), "-dlroW_olleH-")
    }

}
