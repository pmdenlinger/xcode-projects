//
//  ContentView.swift
//  ListRowEdit
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Spain", "Cameroon", "South Africa", "Japan", "South Korea"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Text(country)
                }
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { EditButton() }
        
        }
    }
    private func deleteItem(atIndexSet:  IndexSet) {
        countries.remove(atOffsets: atIndexSet)
    }
}

#Preview {
    ContentView()
}
