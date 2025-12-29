//
//  ContentView.swift
//  CustomRows
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

struct ContentView: View {
    
    var weatherData: [WeatherInfo]
    
    var body: some View {
        List {
            ForEach(weatherData) { weather in
                WeatherRow(weather: weather)
                
            }
        }
    }
}

#Preview {
    ContentView(weatherData: WeatherInfo.weatherData)
}
