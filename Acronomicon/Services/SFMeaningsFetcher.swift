//  SFMeaningsFetcher.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 10/06/21.
//  
//

import Foundation
import Combine


// A meanings provider using the STANDS4 API
class SFMeaningsFetcher: MeaningsFetcher {
    
    private let session = URLSession(configuration: .default)
    private let host = "www.stands4.com/services/v2/abbr.php"

    // Use this to configure the call
    private struct SFParams  {
        static let uid = Secrets.stands4UserID
        static let tokenID = Secrets.stands4Token
        
        // p: popularity, a: alphabetically, c: category
        static let sortBy = "p"
        
        // e: exact match, r: reverse lookup
        static let searchType = "e"
        
        // result format: xml, json
        static let format = "json"
    }
    
    private func makeURL(term: String) -> URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "www.stands4.com"
        components.path = "/services/v2/abbr.php"
        components.queryItems = [
            URLQueryItem(name: "uid", value: SFParams.uid),
            URLQueryItem(name: "tokenid", value: SFParams.tokenID),
            URLQueryItem(name: "term", value: term),
            URLQueryItem(name: "sortby", value: SFParams.sortBy),
            URLQueryItem(name: "searchtype", value: SFParams.searchType),
            URLQueryItem(name: "format", value: SFParams.format)
        ]
        
        return components.url
    }
    
    
    func fetchMeanings(for term: String) -> AnyPublisher<MeaningResults, FetchError> {
        guard let url = makeURL(term: term) else {
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
                return MeaningResults(fromSFResults: results.result)
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
