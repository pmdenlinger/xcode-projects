//  ContentView.swift
//  iExpense
//
//  Created by Paul Denlinger on 12/24/25.
//

import SwiftUI

struct ExpenseItem {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]()
    
    func removeItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

struct ContentView: View {
    
    @State private var expenses = Expenses()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items, id: \.id) { item in
                    Text(item.name)
                }
                .onDelete(perform: expenses.removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button ("Add Expense", systemImage: "plus") {
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5.00)
                    expenses.items.append(expense)
                }
                    
            }
        }
            
        
    }
}

#Preview {
    ContentView()
}
        


    
