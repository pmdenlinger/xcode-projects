//
//  WeatherRow.swift
//  CustomRows
//
//  Created by Paul Denlinger on 12/4/25.
//

    // Line 1: Import the SwiftUI framework, which provides all the UI components and functionality
import SwiftUI

    // Line 3: Define a new struct called WeatherRow that conforms to the View protocol
    // The View protocol means this struct can be used as a SwiftUI view component
struct WeatherRow: View {
    
        // Line 4: Declare a property called 'weather' of type WeatherInfo
        // This property will hold the weather data that this row will display
    var weather: WeatherInfo
    
        // Line 5: Define the 'body' property, which is required by the View protocol
        // This computed property returns the visual content of the view
    var body: some View {
        
            // Line 6: Create an HStack (horizontal stack) to arrange views side by side
        HStack {
            
                // Line 7: Create an Image view using a system symbol
                // weather.image should contain the name of an SF Symbol (like "cloud.fill")
            Image(systemName: weather.image)
            
                // Line 8: Set the frame width to 50 points and align content to the leading edge (left)
                .frame(width: 50, alignment: .leading)
            
                // Line 9: Create a Text view to display the temperature
                // NOTE: This line has a syntax error - should be "\(weather.temp)℉"
            Text("\(weather.temp)℉")
            
                // Line 10: Set frame width to 80 points, aligned to the leading edge
                .frame(width: 80, alignment: .leading)
            
                // Line 11: Create another Text view to display the city name
                // This text will take up remaining space in the HStack
            Text(weather.city)
            
                // Line 12: Empty line for spacing in code
            
        } // Line 13: End of HStack
        
            // Line 14: Apply a system font with size 25 to all views in the HStack
        .font(.system(size: 25))
        
            // Line 15: Add padding around the entire HStack for better visual spacing
        .padding()
        
    } // Line 16: End of body property
} // Line 17: End of WeatherRow struct

    // Line 19: Create a preview for Xcode's canvas feature
    // This allows you to see how the view looks while developing
#Preview {
    
        // Line 20: Create an instance of WeatherRow for the preview
        // NOTE: This has an error - it needs a weather parameter and the syntax is incorrect
    WeatherRow(weather: WeatherInfo(image: "snow", temp: 5, city: "New York"))
} // Line 21: End of preview
