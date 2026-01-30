    //
    //  MapView.swift
    //  FoodPin
    //
    //  Created by Paul Denlinger on 1/29/26.
    //

import SwiftUI
import MapKit

struct MapView: View {
    var location: String = ""
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.510357, longitude: -0.116773),
        span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
    )
    
    var body: some View {
        Map(initialPosition: .region(region))
            .task {
                await convertAddress(location: location)
            }
    }
    
    private func convertAddress(location: String) async {
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = location
        
        let localSearch = MKLocalSearch(request: searchRequest)
        
        do {
            let response = try await localSearch.start()
            if let coordinate = response.mapItems.first?.placemark.coordinate {
                region = MKCoordinateRegion(
                    center: coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                )
            }
        } catch {
            print("Search error: \(error)")
        }
    }
}

#Preview {
    MapView()
}
