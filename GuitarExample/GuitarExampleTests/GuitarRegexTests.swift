//
//  GuitarRegexTests.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarRegexTests: XCTestCase {

    func testIsValidEmail() {
        XCTAssertTrue(GuitarRegex.isValidEmail(email: "arthur@sabintsev.com"))
        XCTAssertTrue(GuitarRegex.isValidEmail(email: "arthur.sabintsev@example.com"))
        XCTAssertFalse(GuitarRegex.isValidEmail(email: "arthur.sabintsev@example"))
        XCTAssertFalse(GuitarRegex.isValidEmail(email: "arthur.sabintsev@x.y.z"))

    }

}
