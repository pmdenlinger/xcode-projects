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
            
        }
    }
}

#Preview {
    ContentView()
}
