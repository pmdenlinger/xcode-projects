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
    
    @State private var showOptions = false
    @State private var showError = false
    @Binding var isFavorite: Bool
    

    
    var body: some View {
        
        HStack(alignment: .top, spacing: 20) {
                Image(imageName)
                    .resizable()
                    .frame(width: 120, height: 118)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            if isFavorite {
                Spacer()
                Image(systemName: "heart.fill")
                    .foregroundStyle(.yellow)
            }
                
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.system(.title2, design: .rounded))
                        
                    Text(type)
                        .font(.system(.body, design: .rounded))
                    
                    Text(location)
                        .font(.system(.subheadline, design: .rounded))
                        .foregroundStyle(.gray)
                }
            }
        .onTapGesture {
            showOptions.toggle()
        }
        .confirmationDialog("What do you want to do?", isPresented: $showOptions, titleVisibility: .visible) {
            Button("Reserve a table") {
                self.showError.toggle()
            }
            Button("Mark as favorite") {
                self.isFavorite.toggle()
            }
        }
        .alert("Not yet available", isPresented: $showError) {
            Button("OK") {}
        } message: {
            Text("Sorry, this feature is not available yet. Please retry later.")
        }
        
        }
    }

struct FullImageRow: View {
    var imageName: String
    var name: String
    var type: String
    var location: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(.title2, design: .rounded))
                
                Text(location)
                    .font(.system(.subheadline, design: .rounded))
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            .padding(.bottom)
            
            }
        }
    }
    


struct RestaurantListView: View {
    
    
    
    
    
    
    
    
    
    
    
    
    var body: some View {
        List {
            ForEach(restaurantNames.indices, id: \.self) {
                index in
                BasicTextImageRow(imageName: restaurantImages[index],
                                  name: restaurantNames[index],
                                  type: restaurantTypes[index],
                                  location: restaurantLocations[index],
                                  isFavorite: $restaurantIsFavorites[index])
                
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

#Preview("BasicTextImageRow", traits: .sizeThatFitsLayout) {
    BasicTextImageRow(imageName: "cafedeadend",
                      name: "Cafe Deadend",
                      type: "Cafe",
                      location: "Hong Kong",
                      isFavorite: .constant(true))
}

#Preview("FullImageRow", traits: .sizeThatFitsLayout) {
    FullImageRow(imageName: "cafedeadend",
                      name: "Cafe Deadend",
                      type: "Cafe",
                      location: "Hong Kong")
}
