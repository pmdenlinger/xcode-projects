//
//  ContentView.swift
//  SimpleTable
//
//  Created by Paul Denlinger on 1/5/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach (1...4, id: \.self) {
                Text("Item \($0)")
            }
        }
    }
}

#Preview {
    ContentView()
}
