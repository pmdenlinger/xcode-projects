//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Paul Denlinger on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.8, blue: 0)
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Your content")
        }
        
    }
}

#Preview {
    ContentView()
}
