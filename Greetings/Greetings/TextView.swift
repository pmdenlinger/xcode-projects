//
//  TextView.swift
//  Greetings
//
//  Created by Paul Denlinger on 11/22/25.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    @State var color: Color
    
    let colors: [Color] = [
        .red,
            .green,
            .blue,
            .orange,
            .purple,
            .yellow,
        Color(red: 0.5,
                green: 0,
                blue: 0.5),
        Color(red: 0,
              green: 0.5,
              blue: 0.5),
        Color(red: 139 / 255,
              green: 207 / 255,
              blue: 240 / 255),
        Color(red: 1,
              green: 214 / 255,
              blue: 0)]
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(
                color: color,
                radius: 5,
                x: 10,
                y: 10
            )
            .onTapGesture {
                // Randomly change color on tap
                
                    color = colors.randomElement() ?? .red
                
                
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus", color: .blue)
        TextView(text: "Peace", color: .purple)
    }
}
