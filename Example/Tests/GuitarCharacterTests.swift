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

    static var allTests = [
        ("testLatinized", testLatinized),
        ("testReversedString", testReversedString),
        ("testWithoutAccents", testWithoutAccents)
    ]

    func testLatinized() {
        #if !os(Linux)
            if #available(iOS 9.0, macOS 10.11, tvOS 9.0, watchOS 3.0, *) {
                XCTAssertEqual("Hello! こんにちは! สวัสดี! مرحبا! 您好!".latinized(), "Hello! kon'nichiha! swasdi! mrhba! nin hao!")
                XCTAssertEqual("как прекрасен этот мир".latinized(), "kak prekrasen etot mir")
                XCTAssertEqual("你叫(做)乜野名呀？".latinized(), "ni jiao (zuo) mie ye ming ya？")
                XCTAssertEqual("어떻게 지내세요?".latinized(), "eotteohge jinaeseyo?")
                XCTAssertEqual("What a wonderful world! That's not cliché at all!".latinized(), "What a wonderful world! That's not cliche at all!")
            }
        #endif
    }

    func testReversedString() {
        XCTAssertEqual("Hello World".reversedString(), "dlroW olleH")
        XCTAssertEqual("4ello Worl6".reversedString(), "6lroW olle4")
        XCTAssertEqual("-Hello_World-".reversedString(), "-dlroW_olleH-")
    }

    func testWithoutAccents() {
        XCTAssertEqual("Crème brûlée".withoutAccents(), "Creme brulee")
        XCTAssertEqual("août décembre".withoutAccents(), "aout decembre")
        XCTAssertEqual("öffne die Tür".withoutAccents(), "offne die Tur")
        XCTAssertEqual("El niño corrió hácia el balcón".withoutAccents(), "El nino corrio hacia el balcon")
        XCTAssertEqual("meu coração vai continuar".withoutAccents(), "meu coracao vai continuar")
        XCTAssertEqual("Hēllö wōrld, Î åm Šïrį āńd Ī čãrrÿ thė àñśwêr tó lìfę".withoutAccents(), "Hello world, I am Siri and I carry the answer to life")
    }

}
