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
            ForEach(0..<5) {
                Text("Dynamic row \($0)")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
