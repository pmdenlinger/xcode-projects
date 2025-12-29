//
//  ContentView.swift
//  ListWithSections
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("North America")) {
                    Text("USA")
                    Text("Canada")
                    Text("Mexico")
                    Text("Panama")
                    Text("Anguilla")
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Continents and Countries")
            .navigationBarTitleDisplayMode(.inline)
        }
        List {
            Section(header: Text("Africa")) {
                Text("Nigeria")
                Text("Ghana")
                Text("Kenya")
                Text("Senegal")
            }
            .listStyle(.grouped)
        }
        List {
            Section(header: Text("Europe")) {
                Text("Spain")
                Text("France")
                Text("Sweden")
                Text("Finland")
                Text("UK")
            }
            .listStyle(.grouped)
        }
        
    }
}

#Preview {
    ContentView()
}
