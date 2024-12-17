import XCTest
@testable import LoggerLibrary

final class LoggerLibraryTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        
        LoggerLibrary(true).log(level: .warnning, "hhm")
    }
}
