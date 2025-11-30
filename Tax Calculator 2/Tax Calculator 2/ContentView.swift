//
//  ContentView.swift
//  Tax Calculator 2
//
//  Created by Paul Denlinger on 11/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var salary: String = ""
    
    var body: some View
    {
        VStack
        {
            Text( "Annual Salary" )
            
            TextField( "Salary", text: $salary)
            .border(Color.black, width: 1)
            
        Button(action: {
            
        }, label: {
            Text("Calculate Tax") }
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

