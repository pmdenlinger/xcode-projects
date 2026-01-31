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
    
    @State private var errorMessage: String?
    
    var body: some View {
        Map(initialPosition: .region(region))
            .overlay(alignment: .bottom) {
                if let errorMessage {
                    Text(errorMessage)
                        .padding()
                        .background(.red.opacity(0.8))
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                        .padding()
                }
            }
            .task {
                await convertAddress(location: location)
            }
    }
    
    @MainActor
    private func convertAddress(location: String) async {
            // Guard against empty location
        guard !location.isEmpty else {
            errorMessage = "No location provided"
            return
        }
        
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = location
        
        let localSearch = MKLocalSearch(request: searchRequest)
        
        do {
                // Check for cancellation before starting
            try Task.checkCancellation()
            
            let response = try await localSearch.start()
            
                // Use the boundingRegion center directly
            let coordinate = response.boundingRegion.center
            region = MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            )
            
                // Clear any previous errors
            errorMessage = nil
            
        } catch is CancellationError {
                // Task was cancelled, don't show error
            return
        } catch {
            errorMessage = "Unable to find location: \(error.localizedDescription)"
            print("Search error: \(error)")
        }
    }
}

#Preview {
    MapView(location: "54 Frith Street London W1D 4SL United Kingdom")
}
