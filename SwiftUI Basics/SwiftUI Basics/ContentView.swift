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
    
    @State var screenTapped: Bool = false
    
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
//             Text
            Text("SwiftUI Basics")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
            
        }
        .onTapGesture {
//            Change screen color if tapped
            screenTapped.toggle()
            
        }
    }
}

#Preview {
    ContentView()
}
