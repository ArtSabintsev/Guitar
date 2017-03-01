//
//  GuitarExampleTests.swift
//  GuitarExampleTests
//
//  Created by Sabintsev, Arthur on 3/1/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarExampleTests: XCTestCase {

    func testIsAlpha() {
        XCTAssertTrue("HelloWorld".isAlpha())
        XCTAssertFalse("Hell0World".isAlpha())
        XCTAssertFalse("Hell World".isAlpha())
    }
    
}
