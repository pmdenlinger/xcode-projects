//
//  ContentView.swift
//  ListRowAdd
//
//  Created by Paul Denlinger on 12/5/25.
//

import SwiftUI

struct ContentView: View {

    @State var numbers = [1, 2, 3, 4, 5]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(self.numbers, id: \.self) {
                    number in
                    Text("\(number)")
                }
            }
            .navigationTitle("Number List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Add") {
                    addItemToRow()
                }
            }
            
        }
    }
    private func addItemToRow() {
        self.numbers.append(Int.random(in: 5 ..< 100))
    }
}

    #Preview {
        ContentView()
    }

