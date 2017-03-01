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
        XCTAssertTrue("a".isAlpha())
    }

    func testPerformanceExample() {

        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
