//
//  ContentView.swift
//  Animations
//
//  Created by Paul Denlinger on 12/18/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(
                .linear(duration: 1),
                value: animationAmount
        )
        }
    }
}

#Preview {
    ContentView()
}
