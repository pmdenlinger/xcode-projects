//
//  ContentView.swift
//  WeSplit
//
//  Created by Paul Denlinger on 12/11/25.
//

import SwiftUI

struct ContentView: View {
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                
            }
                
        }
        .navigationTitle(Text("WeSplit"))
        .navigationBarTitleDisplayMode(.inline)
            
    }
        
        
}


#Preview {
    ContentView()
}
