//
//  GuitarCaseTests.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/1/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarCaseTests: XCTestCase {

    static var allTests = [
        ("testCamelCased", testCamelCased),
        ("testCapitalized", testCapitalized),
        ("testDecapitalized", testDecapitalized),
        ("testKebabCased", testKebabCased),
        ("testPascalCased", testPascalCased),
        ("testSnakeCased", testSnakeCased),
        ("testCaseMorphing", testCaseMorphing)
    ]

    func testCamelCased() {
        XCTAssertEqual("Hello World".camelCased(), "helloWorld")
        XCTAssertEqual("HelloWorld".camelCased(), "helloWorld")
        XCTAssertEqual("-Hello_World-".camelCased(), "helloWorld")
        XCTAssertEqual("Hell0W0rld".camelCased(), "hell0W0rld")
        XCTAssertEqual("helloWorld".camelCased(), "helloWorld")
    }

    func testCapitalized() {
        XCTAssertEqual("hello_world! hello___America! iOS-developer **for_life!?** _*ya!".capitalized(),
                       "Hello_World! Hello___America! IOS-Developer **For_Life!?** _*Ya!")
    }

    func testDecapitalized() {
        XCTAssertEqual("Hello World. Hello Arthur! Hello 1? Hello *!".decapitalized(), "hello world. hello arthur! hello 1? hello *!")
    }

    func testKebabCased() {
        XCTAssertEqual("Hello World".kebabCased(), "hello-world")
        XCTAssertEqual("Hello_World".kebabCased(), "hello-world")
        XCTAssertEqual("HelloWorld".kebabCased(), "hello-world")
    }

    func testPascalCased() {
        XCTAssertEqual("Hello World".pascalCased(), "HelloWorld")
        XCTAssertEqual("HelloWorld".pascalCased(), "HelloWorld")
        XCTAssertEqual("-Hello_World-".pascalCased(), "HelloWorld")
        XCTAssertEqual("Hell0W0rld".pascalCased(), "Hell0W0rld")
    }

    func testSnakeCased() {
        XCTAssertEqual("Hello World".snakeCased(), "hello_world")
        XCTAssertEqual("hello world".snakeCased(), "hello_world")
        XCTAssertEqual("Hell0W0rld".snakeCased(), "hell_0_w_0rld")
        XCTAssertEqual("HelloWorld".snakeCased(), "hello_world")
    }

    func testSwapCased() {
        XCTAssertEqual("Hello World".swapCased(), "hELLO wORLD")
        XCTAssertEqual("HelloWorld".swapCased(), "hELLOwORLD")
        XCTAssertEqual("-Hello_World-".swapCased(), "-hELLO_wORLD-")
        XCTAssertEqual("Hell0W0rld".swapCased(), "hELL0w0RLD")
    }

    func testCaseMorphing() {
        let string = "Hello World"

        XCTAssertEqual(string.camelCased().kebabCased(), "hello-world")
        XCTAssertEqual(string.camelCased().pascalCased(), "HelloWorld")
        XCTAssertEqual(string.camelCased().snakeCased(), "hello_world")

        XCTAssertEqual(string.kebabCased().camelCased(), "helloWorld")
        XCTAssertEqual(string.kebabCased().pascalCased(), "HelloWorld")
        XCTAssertEqual(string.kebabCased().snakeCased(), "hello_world")

        XCTAssertEqual(string.pascalCased().camelCased(), "helloWorld")
        XCTAssertEqual(string.pascalCased().kebabCased(), "hello-world")
        XCTAssertEqual(string.pascalCased().snakeCased(), "hello_world")

        XCTAssertEqual(string.snakeCased().camelCased(), "helloWorld")
        XCTAssertEqual(string.snakeCased().kebabCased(), "hello-world")
        XCTAssertEqual(string.snakeCased().pascalCased(), "HelloWorld")
    }

}
