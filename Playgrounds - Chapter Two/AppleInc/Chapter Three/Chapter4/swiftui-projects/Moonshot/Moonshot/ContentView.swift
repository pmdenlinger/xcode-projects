//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/26/25.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
    
    var body: some View {
        Text(text)
        }
}

struct ContentView: View {
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) { index in
                    CustomText("Item \(index)")
                        .font(.title)
                    
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}


#Preview {
    ContentView()
}
