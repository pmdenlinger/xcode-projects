//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Image("apollo11")
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { size, axis in
                        size * 0.8
                    }
                
                ForEach(0..<100) { index in
                    Text("Item \(index)")
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
