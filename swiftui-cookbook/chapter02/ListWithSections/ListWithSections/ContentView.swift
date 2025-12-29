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
    }
}

#Preview {
    ContentView()
}
