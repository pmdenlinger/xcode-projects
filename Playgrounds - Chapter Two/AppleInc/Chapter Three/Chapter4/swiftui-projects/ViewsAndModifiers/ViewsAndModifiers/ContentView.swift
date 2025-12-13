//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Paul Denlinger on 12/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
           
                Text("Hello, world!")
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.blue)
                .padding()
                .background(Color.green)
                .padding()
                .background(Color.yellow)
        }
    }
}

#Preview {
    ContentView()
}
