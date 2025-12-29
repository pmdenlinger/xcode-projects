//
//  ContentView.swift
//  UsingSF Symbols
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "c")
                Image(systemName: "o")
                Image(systemName: "o")
                Image(systemName: "k")
                
            }
            .symbolVariant(.fill.circle)
            .foregroundStyle(.yellow, .blue)
            .font(.title)
        }
    }
}

#Preview {
    ContentView()
}
