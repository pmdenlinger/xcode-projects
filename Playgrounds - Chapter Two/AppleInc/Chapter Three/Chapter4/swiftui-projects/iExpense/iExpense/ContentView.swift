//
//  ContentView.swift
//  iExpense
//
//  Created by Paul Denlinger on 12/24/25.
//

import SwiftUI
import Observation

@Observable
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct ContentView: View {
    
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
    }
}
    
