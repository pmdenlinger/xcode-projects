//
//  ContentView.swift
//  FoodPin
//
//  Created by Paul Denlinger on 1/6/26.
//

import SwiftUI

struct BasicTextImageRow: View {
    
    var imageName: String
    var name: String
    var type: String
    var location: String
    
//    The code below was suggested by Copilot and should be checked against Simon //Ng's code before proceeding.
    
//    var body: some View {
//        
//            HStack(spacing: 12) {
//                Image(imageName)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 60, height: 60)
//                    .cornerRadius(8)
//                    .clipped()
//                
//                VStack(alignment: .leading, spacing: 4) {
//                    Text(name)
//                        .font(.headline)
//                    Text(type)
//                        .font(.subheadline)
//                        .foregroundColor(.secondary)
//                    Text(location)
//                        .font(.caption)
//                        .foregroundColor(.secondary)
//                }
//            }
//            .padding(.vertical, 8)
//        
//    }
}

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
    
    var restaurantTypes = [
        "Coffee & Tea Shop",
        "Cafe", "Tea House",
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
    
    var body: some View {
        List {
            ForEach(restaurantNames.indices, id: \.self) {
                index in
                BasicTextImageRow(imageName: restaurantImages[index],
                                  name: restaurantNames[index],
                                  type: restaurantTypes[index],
                                  location: restaurantLocations[index])
                
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
