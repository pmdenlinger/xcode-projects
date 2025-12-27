//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("apollo11")
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) {
                size, axis in size * 0.8
            }
            
            
    }
}

#Preview {
    ContentView()
}
