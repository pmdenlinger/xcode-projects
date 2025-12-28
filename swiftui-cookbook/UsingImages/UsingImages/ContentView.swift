//
//  ContentView.swift
//  UsingImages
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(.dogs1)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        
    }
}

#Preview {
    ContentView()
}
