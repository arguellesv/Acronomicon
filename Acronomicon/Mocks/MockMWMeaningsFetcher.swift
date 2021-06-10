//  MockMWMeaningsFetcher.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 09/06/21.
//
//

import Foundation
import Combine

// A meanings provider that mocks the data produced
// by MWMeaningsFetcher

class MockMWMeaningsFetcher: MeaningsFetcher {
    func fetchMeanings(for term: String) -> AnyPublisher<MeaningResults, FetchError> {
        let data = Mocks.json
        
        return Just<Data>(data)
            .flatMap(maxPublishers: .max(1)) { output in
                Self.decode(output)
            }
            .map({ results in
                MeaningResults(fromMWResults: results)
            })
            .eraseToAnyPublisher()
    }
    
    static func decode(_ data: Data) -> AnyPublisher<[MWMeaningResult], FetchError> {
        let decoder = JSONDecoder()
        
        return Just(data)
            .decode(type: [MWMeaningResult].self, decoder: decoder)
            .mapError { error in
                dump(data)
                return FetchError.decoding("Error decoding data: \(error.localizedDescription)")
            }
            .eraseToAnyPublisher()
    }
}
