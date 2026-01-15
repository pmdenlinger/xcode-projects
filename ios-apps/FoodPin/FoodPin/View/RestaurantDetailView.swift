//
//  RestaurantDetailView.swift
//  FoodPin
//
//  Created by Paul Denlinger on 1/15/26.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        Image(restaurant.image)
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .ignoresSafeArea()
    }
}

#Preview {
    RestaurantDetailView(restaurant: Restaurant(
                                     name: "Cafe Deadend",
                                     type: "Cafe",
                                     location: "Hong Kong",
                                     image: "cafedeadend",
                                     isFavorite: true))
}
