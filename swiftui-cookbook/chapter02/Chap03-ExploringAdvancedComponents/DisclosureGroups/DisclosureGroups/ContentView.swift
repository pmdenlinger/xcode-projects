//
//  ContentView.swift
//  DisclosureGroups
//
//  Created by Paul Denlinger on 12/30/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showplanets = true
    @State private var showEarth = false
    
    var body: some View {
        DisclosureGroup("Planets", isExpanded: $showplanets) {
            Text("Mercury")
            Text("Venus")
            DisclosureGroup("Earth", isExpanded: $showEarth) {
                Text("North America")
                Text("South America")
                Text("Europe")
                Text("Africa")
                Text("Asia")
                Text("Antartica")
                Text("Oceania")
        }
        }.padding()
    }
}

    

#Preview {
    ContentView()
}
