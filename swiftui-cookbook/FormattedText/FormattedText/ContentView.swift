//
//  ContentView.swift
//  FormattedText
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var password = "1234"
    @State private var someText = "initial text"
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .fontWeight(.medium)
            
            SecureField("Enter a password", text: $password)
                .padding()
            
            
                
        }
       
    }
}

#Preview {
    ContentView()
}
