//
//  ContentView.swift
//  SwiftUS Basics2
//
//  Created by Paul Denlinger on 11/29/25.
//

import SwiftUI

struct ContentView: View {
    
    let colorList1: [Color] = [.red, .purple, .green, .pink]
    let colorList2: [Color] = [.black, .white, .blue]
    
    @State var screenTapped: Bool = false
    
    var activeColor: [Color] {
        screenTapped ? colorList1 : colorList2
    }
    
    var body: some View {
        
        
        ZStack {
//            Background Color
            LinearGradient(
                colors: activeColor,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.7)
            .ignoresSafeArea()
            
//            Text
            Text("SwiftUI Basics 2")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
            
            
        }
        .onTapGesture {
            screenTapped.toggle()
        }
    }
}

#Preview {
    ContentView()
}
