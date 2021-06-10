//  SearchViewModel.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 09/06/21.
//  
//

import SwiftUI
import Combine

class SearchViewModel: ObservableObject {
    @Published var searchTerm: String = ""
    @Published var results: [MeaningResult] = []
    @Published var finishedWithoutResults = false
    @Published var isProcessing: Bool = false
    
    @Published var errorMessage: String = "" {
        didSet {
            errorSetCallback?(self)
        }
    }
    
    var hasResults: Bool {
        !results.isEmpty
    }
    
    var hasError: Bool {
        !errorMessage.isEmpty
    }
    
    private let meaningsProvider: MeaningsFetcher
    
    private var cancellables = Set<AnyCancellable>()
    
    var errorSetCallback: ((SearchViewModel) -> ())?
    
    init(meaningsProvider: MeaningsFetcher) {
        self.meaningsProvider = meaningsProvider
    }
    
    func search() {
        self.finishedWithoutResults = false
        self.isProcessing = true
        self.results.removeAll()
        
        meaningsProvider.fetchMeanings(for: searchTerm)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] completion in
                guard let self = self else { return }
                
                switch completion {
                    case .failure(let error):
                        self.handleError(error, searchTerm: self.searchTerm)
                        self.isProcessing = false
                    default:
                        break
                }
            } receiveValue: { [weak self] value in
                guard let self = self else { return }
                
                self.results = value.items
                self.finishedWithoutResults = self.results.count == 0
                self.isProcessing = false
                self.errorMessage.removeAll()
            }
            .store(in: &cancellables)
    }
    
    private func handleError(_ error: FetchError, searchTerm: String) {
        switch error {
            case .decoding, .notFound:
                errorMessage = "Found no results for \(searchTerm) :("
            case .networking:
                errorMessage = "Could not access the network"
        }
    }
}
