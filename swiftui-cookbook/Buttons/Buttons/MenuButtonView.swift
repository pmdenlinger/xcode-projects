//
//  MenuButtonView.swift
//  Buttons
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Menu("Choose a country") {
            Button("Canada") {
                print("Canada selected")
            }
            Button("Mexico") {
                print("Mexico selected")
            }
            Button("USA") {
                print("USA selected")
            }
                
        }
        .navigationTitle("MenuButtons")
    }
}

#Preview {
    MenuButtonView()
}
