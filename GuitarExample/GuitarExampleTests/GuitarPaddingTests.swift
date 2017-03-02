//
//  GuitarPaddingTests.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/2/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarPaddingTests: XCTestCase {

    func testPadLeft() {
        XCTAssertEqual("Hello World".padLeft(length: 15), "    Hello World")
        XCTAssertEqual("-Hello_World-".padLeft(length: 15), "  -Hello_World-")
        XCTAssertEqual(" -H3Llo W0rld_ ".padLeft(length: 20), "      -H3Llo W0rld_ ")
        XCTAssertEqual("Hello World".padLeft(length: 5), "Hello World")

        XCTAssertEqual("Hello World".padLeft(length: 15, withToken: "*"), "****Hello World")
        XCTAssertEqual("-Hello_World-".padLeft(length: 15, withToken: "*"), "**-Hello_World-")
        XCTAssertEqual(" -H3Llo W0rld_ ".padLeft(length: 20, withToken: "*"), "***** -H3Llo W0rld_ ")
        XCTAssertEqual("Hello World".padLeft(length: 5, withToken: "*"), "Hello World")
    }

    func testPadRight() {
        XCTAssertEqual("Hello World".padRight(length: 15), "Hello World    ")
        XCTAssertEqual("-Hello_World-".padRight(length: 15), "-Hello_World-  ")
        XCTAssertEqual(" -H3Llo W0rld_ ".padRight(length: 20), " -H3Llo W0rld_      ")
        XCTAssertEqual("Hello World".padRight(length: 5), "Hello World")

        XCTAssertEqual("Hello World".padRight(length: 15, withToken: "*"), "Hello World****")
        XCTAssertEqual("-Hello_World-".padRight(length: 15, withToken: "*"), "-Hello_World-**")
        XCTAssertEqual(" -H3Llo W0rld_ ".padRight(length: 20, withToken: "*"), " -H3Llo W0rld_ *****")
        XCTAssertEqual("Hello World".padRight(length: 5, withToken: "*"), "Hello World")
    }

    func testPad() {
        XCTAssertEqual("Hello World".pad(length: 15), "  Hello World  ")
        XCTAssertEqual("-Hello_World-".pad(length: 15), " -Hello_World- ")
        XCTAssertEqual(" -H3Llo W0rld_ ".pad(length: 20), "   -H3Llo W0rld_    ")
        XCTAssertEqual("Hello World".pad(length: 5), "Hello World")

//        XCTAssertEqual("Hello World".padRight(length: 15, with: "*"), "Hello World****")
//        XCTAssertEqual("-Hello_World-".padRight(length: 15, with: "*"), "-Hello_World-**")
//        XCTAssertEqual(" -H3Llo W0rld_ ".padRight(length: 20, with: "*"), " -H3Llo W0rld_ *****")
//        XCTAssertEqual("Hello World".padRight(length: 5, with: "*"), "Hello World")
    }
    
}
