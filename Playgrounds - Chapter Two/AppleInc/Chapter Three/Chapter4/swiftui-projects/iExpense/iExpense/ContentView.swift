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
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet"){
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}

#Preview {
    ContentView()
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Dismiss"){
            dismiss()
        }
    }
}
    
