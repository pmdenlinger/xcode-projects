//
//  ContentView.swift
//  iExpense
//
//  Created by Paul Denlinger on 12/24/25.
//

import SwiftUI
import Observation


struct ContentView: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        VStack {
            List {
                ForEach(numbers, id: \.self) {
                    Text("Row \($0)")
                }
            }
            Button("Add Number") {
                numbers.append(currentNumber)
                currentNumber += 1
            }
        }
    }
}
                

#Preview {
    ContentView()
}


    
