//
//  ContentView.swift
//  Tax Calculator
//
//  Created by Paul Denlinger on 11/26/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var salary: String = ""
    
    var body: some View {
        VStack {
            
            Text("Annual Salary")
            
            TextField("Salary", text: $salary)
            
            Button(action: {
            }, label: {
                Text("Calculate Tax")
            })
            
        }
    }
}

#Preview {
    ContentView()
}
