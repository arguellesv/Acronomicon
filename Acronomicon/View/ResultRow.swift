//  ResultRow.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 10/06/21.
//  
//

import SwiftUI

struct ResultRow: View {
    
    let model: MeaningResult
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(model.meaning)
                    .font(.title)
                    .padding(4)
                
                Text(model.comment)
                    .lineLimit(5)
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                Text(model.sourceString)
                    .font(.caption)
                    .italic()
                    .foregroundColor(.init(UIColor.secondaryLabel))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .frame(minHeight: 80, maxHeight: 400)
    }
    
}

struct ResultRow_Previews: PreviewProvider {
    static var previews: some View {
        ResultRow(model: .init(id: UUID(), term: "TEST", meaning: "Testing Every Single Thing", comment: "No comment", source: "test"))
    }
}
