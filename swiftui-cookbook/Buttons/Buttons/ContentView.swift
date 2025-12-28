//
//  ContentView.swift
//  Buttons
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 44) {
                NavigationLink("Buttons") {
                    ButtonView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
