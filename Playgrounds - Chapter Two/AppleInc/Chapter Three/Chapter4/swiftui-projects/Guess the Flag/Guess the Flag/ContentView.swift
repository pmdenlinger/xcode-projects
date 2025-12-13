//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Paul Denlinger on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy",
                     "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                        
                    Text(countries[correctAnswer])
                }
                
                ForEach(0..<3) { number in
                    Button {
                            // flag was tapped
                    } label: {
                        Image(countries[number])
                    }
                }
            }
        }
    }
}
    
    #Preview {
        ContentView()
    }


