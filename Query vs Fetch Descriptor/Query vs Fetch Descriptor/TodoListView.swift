//
//  ContentView.swift
//  Query vs Fetch Descriptor
//
//  Created by Paul Denlinger on 11/25/25.
//

import SwiftUI
import SwiftData

struct TodoListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    TodoListView()
        .modelContainer(for: TodoModel.self) 
}
