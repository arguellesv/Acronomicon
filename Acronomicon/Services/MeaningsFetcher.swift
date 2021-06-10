//  MeaningsFetcher.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 09/06/21.
//  
//

import Foundation
import Combine

protocol MeaningsFetcher {
    func fetchMeanings(for term: String) -> AnyPublisher<MeaningResults, FetchError>
}
