//
//  ContentView.swift
//  MovingListRows
//
//  Created by Paul Denlinger on 12/5/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["USA", "Canada", "UK", "Germany", "France", "Italy", "China", "Japan", "India"]
    
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Text(country)
                }
                .onMove(perform: moveRow)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                EditButton()
            }
            
        }
    }
    private func moveRow(source: IndexSet, destination: Int) {
        countries.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ContentView()
}
