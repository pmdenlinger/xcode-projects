//
//  ContentView.swift
//  ListRowAdd
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var numbers = [1, 2, 3, 4]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(self.numbers, id: \.self) { number in
                    Text("\(number)")
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
