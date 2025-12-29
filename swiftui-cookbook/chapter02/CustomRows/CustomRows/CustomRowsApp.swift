//
//  CustomRowsApp.swift
//  CustomRows
//
//  Created by Paul Denlinger on 12/29/25.
//

import SwiftUI

@main
struct CustomRowsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(weatherData: WeatherInfo.weatherData)
        }
    }
}
