//  MockSFMeaningsFetcher.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 10/06/21.
//  
//

import Foundation
import Combine


// A mock of the meanings provider using the STANDS4 API
class MockSFMeaningsFetcher: MeaningsFetcher {
    
    static let validTerm = "NASA"
    static let invalidTerm = "Something Else"
    
    func fetchMeanings(for term: String) -> AnyPublisher<MeaningResults, FetchError> {
        
        let isValidSearch = term == Self.validTerm
        
        let data = isValidSearch ? Mocks.SFJson : Data()
        
        return Just<Data>(data)
            .flatMap(maxPublishers: .max(1)) { output in
                Self.decode(output)
            }
            .map({ results in
                MeaningResults(fromSFResults: results.result)
            })
            .eraseToAnyPublisher()
    }
    
    static func decode(_ data: Data) -> AnyPublisher<SFAPIResult, FetchError> {
        let decoder = JSONDecoder()
        
        return Just(data)
            .decode(type: SFAPIResult.self, decoder: decoder)
            .mapError { error in
                return FetchError.decoding("Error decoding data: \(error.localizedDescription)")
            }
            .eraseToAnyPublisher()
    }
    
    
}
