import XCTest
@testable import guitarTests

XCTMain([
    testCase(GuitarTests.allTests),
    testCase(GuitarBooleanTests.allTests),
    testCase(GuitarCaseTests.allTests),
    testCase(GuitarCharacterTests.allTests),
    testCase(GuitarPaddingTests.allTests),
    testCase(GuitarTrimmingTests.allTests),
])
