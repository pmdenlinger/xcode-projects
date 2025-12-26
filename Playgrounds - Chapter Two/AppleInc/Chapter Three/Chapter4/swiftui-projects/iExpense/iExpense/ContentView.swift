//  ContentView.swift
//  iExpense
//
//  Created by Paul Denlinger on 12/24/25.
//

import SwiftUI

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decoded = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decoded
                return
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

struct ContentView: View {
    
    @State private var expenses = Expenses()
    
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) { item in
                HStack {
                    VStack (alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }
                        
                     Spacer()
                        Text(item.amount, format: .currency(code: "USD"))
                    }
                    
                }
                
                .onDelete(perform: expenses.removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button ("Add Expense", systemImage: "plus") {
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5.00)
                    showingAddExpense = true
                    expenses.items.append(expense)
                    
                    
                }
            }
            
            
        }
        .sheet(isPresented: $showingAddExpense) {
            AddView(expenses: expenses)
        }
            // show an AddView here
    }
}

#Preview {
    ContentView()
}
        


    
