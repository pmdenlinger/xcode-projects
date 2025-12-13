//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Paul Denlinger on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Delete selection", role: .destructive, action: executeDelete)
        }
        .buttonStyle(.borderedProminent)
        .tint(.mintGreen)
    }
    
    func executeDelete() {
        print("Performing delete")
    }
}

    
    #Preview {
        ContentView()
    }

