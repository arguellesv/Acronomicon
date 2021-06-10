//  SecondaryResultsRow.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 10/06/21.
//  
//

import SwiftUI

struct SecondaryResultsRow: View {
    var model: MeaningResult
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(model.meaning)
                .font(.body)
            Text(model.comment)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct SecondaryResultsRow_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryResultsRow(model: .init(id: UUID(), term: "TEST", meaning: "Testing Every Single Thing", comment: "No comment", source: "test"))
    }
}
