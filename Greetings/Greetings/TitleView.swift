//
//  TitleView.swift
//  Greetings
//
//  Created by Paul Denlinger on 11/23/25.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient  {
        AngularGradient(
            gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]),
            center: .center,
            angle: .zero
        )
    }
    
    @State private var subtitle = "Exploring iOS Programming"
    
    let subtitles = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Building a personal website",
        "Exploring SwiftUI"
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                subtitle = subtitles.randomElement() ?? "Exploring iOS Programming"
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .frame(width: diameter, height: diameter)
                .rotationEffect(angle)              // <- key line
                .onTapGesture {
                    withAnimation(.spring()) {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}

