//
//  ContentView.swift
//  WeScroll
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

struct ContentView: View {
    
    let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p"]
    
    @State private var flashIndicators = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
