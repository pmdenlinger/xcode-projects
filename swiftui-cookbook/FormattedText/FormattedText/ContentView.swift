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
            
            TextField("Enter some text", text: $someText)
                .padding()
            Text(someText)
                .font(.largeTitle)
                .underline()
            
            Text("Changing text color and making it bold")
                .foregroundStyle(.blue)
                .bold()
            Text("Use kerning to change space between characters in the text")
                .kerning(7)
            Text("Changing baseline offest")
                .baselineOffset(100)
            Text("Strikethrough")
                .strikethrough()
            Text("This is a multiline text implemented in SwiftUI. The trailing modifier was added to the text. This text also implements multiple modifiers.")
                .background(.yellow)
                .multilineTextAlignment(.trailing)
                .lineSpacing(10)
            
            
                
        }
       
    }
}

#Preview {
    ContentView()
}
