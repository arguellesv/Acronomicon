//  ContentView.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 08/06/21.
//  
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel: SearchViewModel
    
    init(viewModel: SearchViewModel) {
        self.viewModel = viewModel
        
        // Add color to the navigation bar and status bar
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(.accentColor)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barTintColor = .white
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Acronym to look up, e.g. NASA", text: $viewModel.searchTerm)
                    .padding()
                    .font(.largeTitle)
                    .minimumScaleFactor(0.6)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: buttonAction, label: {
                    Text("Get Meaning")
                        .bold()
                        .foregroundColor(.white)
                })
                .padding()
                .frame(minWidth: 100, minHeight: 44)
                .background(Color.accentColor)
                .cornerRadius(12)
                
                Divider()
                    .padding()
                
                if viewModel.isProcessing {
                    spinner
                }
                
                if viewModel.finishedWithoutResults {
                    noResultsMessage
                        .padding()
                }
                
                if viewModel.hasError {
                    errorMessage
                        .padding()
                }
                
                if viewModel.results.count > 0 {
                    resultView
                }
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("The Acronomicon 🧙‍♂️")
            .ignoresSafeArea(.container, edges: .bottom)
            .onTapGesture {
                hideKeyboard()
            }
        }
    }
    
    private func buttonAction() {
        viewModel.search()
        hideKeyboard()
    }
}

extension SearchView {
    @ViewBuilder
    var resultView: some View {
        List {
            ResultRow(model: viewModel.results.first!)
            Text("Other meanings:")
                .font(.headline)
            
            ForEach(viewModel.results.dropFirst()) { result in
                SecondaryResultsRow(model: result)
            }
        }
        .listStyle(PlainListStyle())
        
    }
    
    var errorMessage: some View {
        Text(viewModel.errorMessage)
            .foregroundColor(.red)
            .font(.caption)
    }
    
    var noResultsMessage: some View {
        Text("No results :|")
            .foregroundColor(.secondary)
            .font(.callout)
    }
    
    var spinner: some View {
        ProgressView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(viewModel: SearchViewModel(meaningsProvider: MockMWMeaningsFetcher()))
    }
}
