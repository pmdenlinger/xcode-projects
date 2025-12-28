//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/26/25.
//

import SwiftUI



struct ContentView: View {
    
        let astronauts = Bundle.main.decode("astronauts.json")
    
    
    var body: some View {
        Text(String(astronauts.count))
        
        
        
    }
}

#Preview {
    ContentView()
}
