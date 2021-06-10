//  MWMeaningsFetcher.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 09/06/21.
//  
//

import Foundation
import Combine


// A meanings provider using the Merriam-Webster API
class MWMeaningsFetcher: MeaningsFetcher {
    
    let session = URLSession(configuration: .default)
    let baseURL = "https://www.dictionaryapi.com/api/v3/references/collegiate/json/"
    
    func fetchMeanings(for term: String) -> AnyPublisher<MeaningResults, FetchError> {
        let queryURL = baseURL
            .appending(term)
            .appending("?key=\(Secrets.merriamWebsterDictionaryAPIKey)")
        
        guard let url = URL(string: queryURL) else {
            let error = FetchError.networking("Could not create the base URL.")
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        return session.dataTaskPublisher(for: url)
            .mapError { error in
                FetchError.networking(error.localizedDescription)
            }
            .flatMap(maxPublishers: .max(1)) { output in
                Self.decode(output.data)
            }
            .map({ results in
                return MeaningResults(fromMWResults: results)
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
