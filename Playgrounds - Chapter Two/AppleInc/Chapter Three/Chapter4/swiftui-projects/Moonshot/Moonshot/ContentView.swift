//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/26/25.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}


struct ContentView: View {
    // ✅ Properties defined at struct level
    let decoder = JSONDecoder()
    let jsonInput = """
        {
        "name": "Taylor Swift", 
        "address": {
        "street": "555, Taylor Swift Avenue",
        "city": "Nashville"
        }
        }
    """
    
    var body: some View {
        
        Button("Decode JSON") {
            // ✅ Now using the properties defined above
            print("Button was tapped!") // Debug: Check if button works
            
            let data = Data(jsonInput.utf8)
            print("Data created: \(data)") // Debug: Check if data is created
            
            if let user = try? decoder.decode(User.self, from: data) {
                print("Successfully decoded user: \(user.name)")
                print("Street address: \(user.address.street)")
            } else {
                print("Failed to decode JSON")
            }
        }
    }
}




#Preview {
    ContentView()
}
