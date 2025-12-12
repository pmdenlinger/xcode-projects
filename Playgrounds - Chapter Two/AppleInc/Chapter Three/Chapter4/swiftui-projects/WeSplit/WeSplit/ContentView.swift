//
//  ContentView.swift
//  WeSplit
//
//  Created by Paul Denlinger on 12/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                
                }
                
                
                
            }
            .navigationTitle(Text("WeSplit"))
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
        
    }


#Preview {
    ContentView()
}
