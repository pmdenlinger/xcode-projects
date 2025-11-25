//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Paul Denlinger on 11/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            LinearGradient(
                colors: [.red, .purple, .green, .pink],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.8)
            .ignoresSafeArea()
//             Text
            Text("SwiftUI Basics")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
            
        }
    }
}

#Preview {
    ContentView()
}
