//
//  ContentView.swift
//  FoodPin
//
//  Created by Paul Denlinger on 1/6/26.
//

import SwiftUI

struct RestaurantListView: View {
    
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
    
    var restaurantImages = [
        "cafedeadend",
        "homei",
        "teakha",
        "cafeloisl",
        "petiteoyster",
        "forkee",
        "posatelier",
        "bourkestreetbakery",
        "haigh",
        "palomino",
        "upstate",
        "traif",
        "graham",
        "waffleandwolf",
        "fiveleaves",
        "cafelore",
        "confessional",
        "barrafina",
        "donostia",
        "royaloak",
        "cask"
    ]
    
    var restaurantTypes = [
        "Coffee & Tea Shop",
        "Cafe",
        "Tea House",
        "Austrian / Casual Drink",
        "French",
        "Bakery",
        "Bakery",
        "Chocolate",
        "Cafe",
        "American / Seafood",
        "American",
        "American",
        "Breakfast & Brunch",
        "Coffee & Tea",
        "Coffee & Tea",
        "Latin American",
        "Spanish",
        "Spanish",
        "Spanish",
        "British",
        "Thai"
    ]
    
    var restaurantLocations = [
        "Hong Kong",
        "Hong Kong",
        "Hong Kong",
        "Hong Kong",
        "Hong Kong",
        "Hong Kong",
        "Hong Kong",
        "Sydney",
        "Sydney",
        "Sydney",
        "New York",
        "New York",
        "New York",
        "New York",
        "New York",
        "New York",
        "New York",
        "London",
        "London",
        "London",
        "London"
    ]
    
    var body: some View {
        List {
            ForEach(restaurantNames.indices, id: \.self) {
                index in
                HStack(alignment: .top, spacing: 20) {
                    Image(restaurantImages[index])
                        .resizable()
                        .frame(width: 120, height: 118)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    VStack(alignment: .leading) {
                        Text(restaurantNames[index])
                            .font(.system(.title2, design: .rounded))
                        
                        Text(restaurantTypes)
                            .font(.system(.body, design: .rounded))
                        
                        Text(restaurantLocations)
                            .font(.system(.subheadline, design: .rounded))
                            .foregroundStyle(.gray)
                        
                    }
                    
                    
                }
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    RestaurantListView()
}

#Preview("Dark Mode") {
    RestaurantListView()
        .preferredColorScheme(.dark)
}
