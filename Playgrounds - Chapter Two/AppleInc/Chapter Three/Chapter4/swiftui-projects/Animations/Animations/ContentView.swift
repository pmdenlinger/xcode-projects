//
//  ContentView.swift
//  Animations
//
//  Created by Paul Denlinger on 12/18/25.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                    // Do nothing
            }
            
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
        }
                
    }
}

    
    
    
    
    #Preview {
        ContentView()
    }

