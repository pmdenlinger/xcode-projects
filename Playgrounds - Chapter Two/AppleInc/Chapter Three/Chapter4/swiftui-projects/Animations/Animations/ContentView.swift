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
            
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
                
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            }
        }
    }


#Preview {
    ContentView()
}
