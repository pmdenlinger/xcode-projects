//
//  ContentView.swift
//  UsingPickers
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var choice = 0
    @State private var showText = false
    @State private var transitModes = ["Bike", "Car", "Bus"]
    @State private var sliderVal = 0
    @State private var gameTime = Date()
    
    var body: some View {
        Form {
            Section {
                Picker("Transit Modes", selection: $choice) {
                    ForEach(0 ..< transitModes.count, id: \.self) {
                        Text("\("transitModes[index])")
                    }
                }
                .pickerStyle(.segmented)
                Text("Current choice: \(transitModes[choice])")
            }
        }
    }
}

#Preview {
    ContentView()
}
