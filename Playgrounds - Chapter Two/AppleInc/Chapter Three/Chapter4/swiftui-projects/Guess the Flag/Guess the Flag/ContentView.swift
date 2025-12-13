//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Paul Denlinger on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important message", isPresented: $showingAlert) {
            Button("OK") {
            }
            }
         
        }
            
    }
    
    func executeDelete() {
        print("Performing delete")
    }
}

    
    #Preview {
        ContentView()
    }

