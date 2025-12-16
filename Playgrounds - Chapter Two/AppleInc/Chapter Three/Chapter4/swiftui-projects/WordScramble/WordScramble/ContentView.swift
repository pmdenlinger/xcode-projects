//
//  ContentView.swift
//  WordScramble
//
//  Created by Paul Denlinger on 12/13/25.
//

import SwiftUI

struct ContentView: View {
    
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Text("Static Row")
            
            
            ForEach(people, id: \.self) {
                Text($0)
            }
            
            Text("Static Row")
            
        }
    }
}

#Preview {
    ContentView()
}
