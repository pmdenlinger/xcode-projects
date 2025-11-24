//
//  ContentView.swift
//  Greetings
//
//  Created by Paul Denlinger on 11/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
    

            VStack(alignment: .leading) {
                TitleView()

                Spacer()

                MessagesView()

                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview("Light") {
    ContentView()
        .preferredColorScheme(.light)
}

#Preview("Dark") {
    ContentView()
        .preferredColorScheme(.dark)
}
