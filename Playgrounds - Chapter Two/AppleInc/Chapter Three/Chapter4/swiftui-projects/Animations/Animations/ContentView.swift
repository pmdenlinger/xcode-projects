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
        Button("Tap Me") {
                // do nothing
            
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(Circle())
    }
}


#Preview {
    ContentView()
}
