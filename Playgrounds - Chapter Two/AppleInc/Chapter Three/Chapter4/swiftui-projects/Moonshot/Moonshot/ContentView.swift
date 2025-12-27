//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/26/25.
//

import SwiftUI



struct ContentView: View {
    
    let layout = [
        GridItem(.adaptive(minimum:80, maximum: 120)),
        GridItem(.adaptive(minimum:80, maximum: 120)),
        GridItem(.adaptive(minimum:80, maximum: 120))
    ]
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(1..<1000) { index in
                    Text("Item \(index)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
