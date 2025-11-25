//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Paul Denlinger on 11/25/25.
//

import SwiftUI

struct ContentView: View {
    
    let colorList1: [Color] = [.red, .purple, .green, .pink]
    let colorList2: [Color] = [.black, .white, .blue]
    
    @State private var screenTapped: Bool = false
    @State private var offsetY: CGFloat = -150.0
    
    // Computed property
    var colors: [Color] {
        screenTapped ? colorList1 : colorList2
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: colors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.8)
            .ignoresSafeArea()
            
            // Text
            Text("SwiftUI Basics")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
                .offset(y: offsetY)
        }
        .onTapGesture {
            // Change screen color if tapped
            screenTapped.toggle()
            withAnimation(.easeIn(duration: 0.5)) {
                if screenTapped {
                    offsetY = -1000
                } else {
                    offsetY = 0
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
