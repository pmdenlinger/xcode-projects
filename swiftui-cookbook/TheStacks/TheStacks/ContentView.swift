//
//  ContentView.swift
//  TheStacks
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("VStack Item 1")
            Text("VStack Item 2")
            
            Spacer()
            Divider()
                .background(.black)
            
            Text("VStack Item 3")
        }
        .background(.blue)
    }
}

#Preview {
    ContentView()
}
