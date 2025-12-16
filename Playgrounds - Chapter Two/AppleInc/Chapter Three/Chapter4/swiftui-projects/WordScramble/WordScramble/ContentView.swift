//
//  ContentView.swift
//  WordScramble
//
//  Created by Paul Denlinger on 12/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            
            Text("Static row 1")
            Text("Static row 2")
            
            ForEach(0..<5) {
                Text("Dynamic row \($0)")
            }
            
            Text("Static row 3")
            Text("Static row 4")
        }
        
    }
}

#Preview {
    ContentView()
}
