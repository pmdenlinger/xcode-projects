//
//  ContentView.swift
//  CustomRows
//
//  Created by Paul Denlinger on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(WeatherInfo.weatherData) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

#Preview {
    ContentView()
}
