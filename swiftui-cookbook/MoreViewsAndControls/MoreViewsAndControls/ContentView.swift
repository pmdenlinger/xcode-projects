//
//  ContentView.swift
//  MoreViewsAndControls
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.5
    @State private var color = Color.red
    @State private var secondColor = Color.yellow
    @State private var someText = "Initial value"
    
    var body: some View {
        
        List {
            Section(header: Text("Progress Views")) {
                ProgressView("Indeterminate progress view")
                ProgressView("Downloading", value: progress, total: 2)
                Button("More") {
                    if progress < 2 {
                        progress += 0.5
                    }
                    
                }
            }
            
            Section(header: Text("Color Picker")) {
                ColorPicker(selection: $color) {
                    Text("Pick my background")
                        .background(color)
                        .padding()
                }
                ColorPicker("Picker", selection: $secondColor)
                
            }
            
            Section(header: Text("Link")) {
                Link("Packt Publishing", destination: URL(string: "https://www.packtpub.com")!)
            }
            
            Section(header: Text("Text Editor")) {
                TextEditor(text: $someText)
                Text("current editor text: \n\(someText)")
                
            }
        }
    }
}

#Preview {
    ContentView()
}
