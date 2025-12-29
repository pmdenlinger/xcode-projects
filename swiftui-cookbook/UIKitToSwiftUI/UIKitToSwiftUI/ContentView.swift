//
//  ContentView.swift
//  UIKitToSwiftUI
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animate = true
    
    var body: some View {
        VStack {
            ActivityIndicator(animating: animate)
            HStack {
                Toggle(isOn: $animate) {
                    Text("Toggle Activity")
                }
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
