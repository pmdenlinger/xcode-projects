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
    NavigationView {
        VStack
        {
        Text( "Annual Salary" )
            .padding(.bottom, 75.0)
        
        TextField( "", text: $salary)
            .frame(width: 200.0)
            .border(Color.black, width: 1)
            .padding(.bottom, 75.0)
            .keyboardType(.decimalPad)
        
        NavigationLink(destination: ResultsView(), label: {
            Text("Calculate Tax")
                .bold()
                .frame(width: 200.0, height: 50.0)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        })
        }
        .padding()
        .navigationTitle("Main Page")
    }
    }
    
    func goToResultsView() {
        ResultsView()
    }
}

#Preview {
    ContentView()
}
    
