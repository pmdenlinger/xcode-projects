//
//  ContentView.swift
//  DisclosureGroups
//
//  Created by Paul Denlinger on 12/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showplanets = true
    // the rest of the content here
    
    var body: some View {
        DisclosureGroup("Planets", isExpanded: $showplanets) {
            Text("Mercury")
            Text("Venus")
        }
    }
    .padding()
}

#Preview {
    ContentView()
}
