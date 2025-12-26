//
//  ContentView.swift
//  iExpense
//
//  Created by Paul Denlinger on 12/24/25.
//

import SwiftUI
import Observation


struct ContentView: View {
    @AppStorage("Tap") private var tapCount = 0
    
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            UserDefaults.standard.set(tapCount + 1, forKey: "Tap")
            tapCount += 1
        }
    }
}
                

#Preview {
    ContentView()
}
        


    
