//
//  ContentView.swift
//  Animations
//
//  Created by Paul Denlinger on 12/18/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
//            Do nothing
        }
        .background(.blue)
        .frame(width: 200, height: 200)
        .foregroundStyle(.white)
    }
}

    
    
    
    
    #Preview {
        ContentView()
    }

