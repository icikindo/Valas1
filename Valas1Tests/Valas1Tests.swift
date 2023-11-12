//
//  Valas1Tests.swift
//  Valas1Tests
//
//  Created by hastu on 12/11/23.
//

import XCTest

final class Valas1Tests: XCTestCase {
    // system under testing
    private var sut: Converters!
    
    override func setUpWithError() throws {
        sut = Converters()
    }
    override func tearDownWithError() throws {
        sut = nil
    }

    func test_convert10_returns1080() {
        let actual = sut.convertEuroToUSD(euro: "10")
        let expected = "$10.80"
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_convertNeg10_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expected = "Please enter a positive number."
        XCTAssertEqual(actual, expected)
    }
    
    func test_convertMillion_returnsTooBigErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "1000000")
        let expected = "Value too big to convert!"
        XCTAssertEqual(actual, expected)
    }
    
    func test_sampleTest() {
        let actual = true
        XCTAssertTrue(actual)
    }

}
