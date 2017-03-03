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

    func testCamelCased() {
        XCTAssertEqual("Hello World".camelCased(), "helloWorld")
        XCTAssertEqual("HelloWorld".camelCased(), "helloWorld")
        XCTAssertEqual("-Hello_World-".camelCased(), "helloWorld")
        XCTAssertEqual("Hell0W0rld".camelCased(), "hell0W0rld")
        XCTAssertEqual("helloWorld".camelCased(), "helloWorld")
    }

    func testDecapitalized() {
        // TODO: Decapitalized needs to be fixed to work with multiple words.
    }


    func testKebabCased() {
        XCTAssertEqual("Hello World".kebabCased(), "-hello-world-")
        XCTAssertEqual("Hello_World".kebabCased(), "-hello-world-")
        XCTAssertEqual("-HeLL0_W0rld-".slugCased(), "-hell0-w0rld-")

        // TODO: This should return -hello-world- in the future.
        XCTAssertEqual("HelloWorld".kebabCased(), "-helloworld-")
    }

    func testPascalCased() {
        XCTAssertEqual("Hello World".pascalCased(), "HelloWorld")
        XCTAssertEqual("HelloWorld".pascalCased(), "HelloWorld")
        XCTAssertEqual("-Hello_World-".pascalCased(), "HelloWorld")
        XCTAssertEqual("Hell0W0rld".pascalCased(), "Hell0W0rld")
    }

    func testSlugCased() {
        XCTAssertEqual("Hello World".slugCased(), "hello-world")
        XCTAssertEqual("Hello_World".slugCased(), "hello-world")
        XCTAssertEqual("HeLL0 W0rld".slugCased(), "hell0-w0rld")

        // TODO: This should return hello-world in the future.
        XCTAssertEqual("HelloWorld".slugCased(), "helloworld")
    }

    func testSnakeCased() {
        XCTAssertEqual("Hello World".snakeCased(), "Hello_World")
        XCTAssertEqual("hello world".snakeCased(), "hello_world")
        XCTAssertEqual("Hell0W0rld".snakeCased(), "Hell0W0rld")

        // TODO: This should return hello_world in the future.
        XCTAssertEqual("HelloWorld".snakeCased(), "HelloWorld")
    }

    func testSwapCased() {
        XCTAssertEqual("Hello World".swapCased(), "hELLO wORLD")
        XCTAssertEqual("HelloWorld".swapCased(), "hELLOwORLD")
        XCTAssertEqual("-Hello_World-".swapCased(), "-hELLO_wORLD-")
        XCTAssertEqual("Hell0W0rld".swapCased(), "hELL0w0RLD")
    }

}
