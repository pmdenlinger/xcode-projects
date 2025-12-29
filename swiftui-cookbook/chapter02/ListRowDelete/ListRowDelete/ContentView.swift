//
//  ContentView.swift
//  ListRowDelete
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Cameroon", "South Africa", "Japan", "South Korea"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) {
                    country in
                    Text(country)
                }
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    private func deleteItem(at indexSet: IndexSet) {
        countries.remove(atOffsets: indexSet)
    }
    
}

#Preview {
    ContentView()
}
