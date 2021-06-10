//  MeaningResultTests.swift
//  AcronomiconTests
//
//  Created by Victor Argüelles on 10/06/21.
//  
//

import XCTest
@testable import Acronomicon

class MeaningResultTests: XCTestCase {

    var sut: MeaningResult!
    
    override func setUp() {
        super.setUp()
        sut = .init(id: UUID(), term: "TEST", meaning: "Testing Every Single Thing", comment: "No comment", source: "test")
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testWhenSourceIsEmptyString_noSourceIsOutput() {
        // given
        sut = .init(id: UUID(), term: "TEST", meaning: "Testing Every Single Thing", comment: "No comment", source: "")
        
        // then
        XCTAssertEqual(sut.sourceString, "")
    }
    
    func testWhenSourceIsSet_SourceStringIsOutput() {
        // given
        let expectedString = "Source: test"
        
        // then
        XCTAssertEqual(sut.sourceString, expectedString)
    }
}
