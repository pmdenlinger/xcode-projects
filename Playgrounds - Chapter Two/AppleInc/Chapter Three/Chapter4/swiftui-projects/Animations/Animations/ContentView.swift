//
//  ContentView.swift
//  Animations
//
//  Created by Paul Denlinger on 12/18/25.
//

import SwiftUI

struct ContentView: View {
    
   @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(
            colors: [.yellow, .red],
            startPoint: .topLeading, endPoint: .bottomTrailing)
        .frame(width: 300, height: 200)
        .clipShape(.rect(cornerRadius: 10))
        
        
    }
}

    
    
    
    
    #Preview {
        ContentView()
    }

