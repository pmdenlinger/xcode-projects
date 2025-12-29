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
            
            HStack {
                Image(systemName: "b.circle.fill")
                Image(systemName: "o.circle.fill")
                    .foregroundStyle(.red)
                Image(systemName: "o.circle.fill")
                    .imageScale(.large)
                Image(systemName: "k.circle.fill")
                    .accessibility(identifier: "Letter K")
            }
            .foregroundStyle(.blue)
            .font(.title)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
