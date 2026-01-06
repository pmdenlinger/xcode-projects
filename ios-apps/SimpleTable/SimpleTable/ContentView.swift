//
//  ContentView.swift
//  SimpleTable
//
//  Created by Paul Denlinger on 1/5/26.
//

import SwiftUI

struct ContentView: View {
    
    var restaurantNames = [
        "Cafe Deadend",
        "Homei",
        "Teakha",
        "Cafe Loisl",
        "Petite Oyster",
        "For Kee Restaurant",
        "Po's Atelier",
        "Bourke Street Bakery",
        "Haigh's Chocolate",
        "Palomino Espresso",
        "Upstate",
        "Traif",
        "Graham Avenue Meats and Deli",
        "Waffle and Wolf",
        "Five Leaves",
        "Cafe Lore",
        "Confessional",
        "Barrafina",
        "Donostia",
        "Royal Oak",
        "CASK Pub and Kitchen"
    ]
    
    var body: some View {
        
        List{
            ForEach(1...restaurantNames.count-1, id: \.self) { index in
                Text(restaurantNames[index])
            }
        }
    }
}
    
    #Preview {
        ContentView()
    }

