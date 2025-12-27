//
//  ContentView.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/26/25.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is the label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
                        
                }
            }
            
            .navigationTitle("SwiftUI")
            
                
            }
                
        }
        




#Preview {
    ContentView()
}
