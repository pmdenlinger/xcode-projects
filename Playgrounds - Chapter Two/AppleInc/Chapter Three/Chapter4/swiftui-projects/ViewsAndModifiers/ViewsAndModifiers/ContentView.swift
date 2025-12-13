//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Paul Denlinger on 12/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button("Hello world"){
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(Color.red)
    }
}

#Preview {
    ContentView()
}
