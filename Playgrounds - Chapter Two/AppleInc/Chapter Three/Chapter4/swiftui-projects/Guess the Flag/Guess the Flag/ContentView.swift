//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Paul Denlinger on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy","Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                    .init(color: .blue, location: 0.3),
                    .init(color: .red, location: 0.3),],
                          center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                
                VStack {
                    Text("Tap the flag of")
                        .font(.subheadline.weight(.heavy))
                        .foregroundColor(.white)
                    
                    Text(countries[correctAnswer])
                        .font(.largeTitle.weight(.semibold))
                        
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .clipShape(Capsule())
                            .shadow(radius: 5)
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(scoreTitle)")
        }
    }
}
    #Preview {
        ContentView()
    }



