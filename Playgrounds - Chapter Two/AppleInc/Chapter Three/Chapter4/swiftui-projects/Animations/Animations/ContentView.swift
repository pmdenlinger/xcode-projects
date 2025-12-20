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
            withAnimation {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(Circle())
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0, y: 1, z: 0))
        
    }
}



#Preview {
    ContentView()
}
