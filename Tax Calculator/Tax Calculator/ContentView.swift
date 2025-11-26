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
                .font(.title)
                .fontWeight(.semibold)
                .padding(20)
            
            TextField("Salary", text: $salary)
                .frame(width: 200.0)
                .border(.black, width: 1)
                .padding(20)
            
            Button(action: {
            }, label: {
                Text("Calculate Tax")
                    .fontWeight(.semibold)
            })
            .buttonStyle(.borderedProminent)
            .padding(20)
            
        }
        .padding(100)
    }
}

#Preview {
    ContentView()
}
