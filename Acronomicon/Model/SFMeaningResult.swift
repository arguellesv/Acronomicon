//  SFMeaningResult.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 10/06/21.
//  
//

import Foundation

extension MeaningResults {
    init(fromSFResults results: [SFResult]) {
        let items = results.map ({
            MeaningResult(fromSTands4Result: $0)
        })
        
        self.init(items: items)
    }
}

extension MeaningResult {
    init(fromSTands4Result result: SFResult) {
        let source = "The STANDS4 Network"
        
        let term = result.term
        let id = UUID()
        let meaning = result.definition
        let category = result.categoryname ?? ""
        
        self.init(id: id, term: term, meaning: meaning, comment: category, source: source)
        return
    }
}

// MARK: - SFAPIResult
struct SFAPIResult: Codable {
    let result: [SFResult]
}

// MARK: - Result
struct SFResult: Codable {
    let id: String?
    let term, definition: String
    let category, categoryname: String?
    let score: String?
}
