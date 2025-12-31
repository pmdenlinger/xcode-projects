//
//  ContentView.swift
//  PreviewingInNavigationStack
//
//  Created by Paul Denlinger on 12/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                NavigationLink(destination: SecondView(someText: "Text passed from ContentView")) {
                    Text("Go to second view")
                        .foregroundStyle(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(25)
                }
                .navigationTitle("Previews")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview("ContentView") {
    ContentView()
}
