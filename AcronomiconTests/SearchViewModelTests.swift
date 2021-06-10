//  SearchViewModelTests.swift
//  AcronomiconTests
//
//  Created by Victor Argüelles on 08/06/21.
//  
//

import XCTest
@testable import Acronomicon

class SearchViewModelTests: XCTestCase {
    var sut: SearchViewModel!
    
    override func setUp() {
        super.setUp()
        let fetcher = MockSFMeaningsFetcher()
        sut = SearchViewModel(meaningsProvider: fetcher)
    }
    
    override func tearDown() {
        sut.errorSetCallback = nil
        sut = nil
        super.tearDown()
    }
    
    // MARK: - When
    func whenValidSearchStarts() {
        sut.searchTerm = MockSFMeaningsFetcher.validTerm
        sut.search()
    }
    
    func whenInvalidSearchStarts() {
        sut.searchTerm = MockSFMeaningsFetcher.invalidTerm
        sut.search()
    }
    
    // MARK: - Searching
    func testWhenSearchIsWorking_SpinnerIsShown() {
        whenValidSearchStarts()
        
        // then
        XCTAssertTrue(sut.isProcessing)
    }
    
    func testWhenSearchFinishes_SpinnerIsHidden() {
        // given
        let exp = expectation(description: "Spinner disappears")
        
        sut.errorSetCallback = { model in
            exp.fulfill()
        }
        
        // when
        whenInvalidSearchStarts()
        
        // then
        wait(for: [exp], timeout: 1)
    }
    
    func testWhenSearchStarts_PreviousResultsStopShowing() {
        // given
        sut.results = [.init(id: UUID(), term: "TEST", meaning: "Testing Every Single Thing", comment: "No comment", source: "test")]
        
        // when
        whenValidSearchStarts()
        
        // then
        XCTAssertFalse(sut.hasResults)
    }
    
    // MARK: - Errors
    
    func testWhenError_InterfaceShowsError() {
        // given
        let exp = expectation(description: "An error message was set")
        sut.searchTerm = MockSFMeaningsFetcher.invalidTerm
        
        sut.errorSetCallback = { model in
            XCTAssertTrue(model.hasError)
            exp.fulfill()
        }
        
        // when
        sut.search()
        
        
        // then
        wait(for: [exp], timeout: 1)
    }
    
    func testGivenError_WhenSearchSuccessful_InterfaceHidesError() {
        // given
        let exp = expectation(description: "An error message was unset")
        sut.errorMessage = "An error message"
        
        sut.errorSetCallback = { model in
            XCTAssertFalse(model.hasError, "The model shows an error")
            exp.fulfill()
        }
        
        // when
        whenValidSearchStarts()
        
        // then
        wait(for: [exp], timeout: 1)
    }

}
