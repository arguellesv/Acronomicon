//  MeaningResult.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 09/06/21.
//  
//

import Foundation

struct MeaningResults {
    let items: [MeaningResult]
}

struct MeaningResult: Identifiable {
    let id: UUID
    let term: String
    let meaning: String
    let comment: String
    let source: String
    
    var sourceString: String {
        if source.isEmpty { return "" }
        
        return "Source: \(source)"
    }
}

