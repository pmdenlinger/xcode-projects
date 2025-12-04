//
//  ContentView.swift
//  WeScroll
//
//  Created by Paul Denlinger on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    
    let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    @State private var flashIndicators = false
    
    var body: some View {
        
        VStack {
            ScrollView {
                ForEach(letters, id: \.self) { letter in
                    Image(systemName: letter)
                        .font(.largeTitle)
                        .foregroundStyle(.yellow)
                        .frame(width: 50, height: 50)
                        .background( .blue)
                        .symbolVariant(.circle.fill)
                }
            }
            .frame(width: 50, height: 200)
            
            
        }
    }
}
    
    #Preview {
        ContentView()
    }


