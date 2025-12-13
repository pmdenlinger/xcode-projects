//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Paul Denlinger on 12/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
           
                Button("Hello, world!") {
                        // do nothing
                }
                .background(.red)
                .frame(width: 200, height: 200)
            
            
            
            
                Button("Hello, world!") {
                    print(type(of: self.body))
                }
                .background(.red)
                .frame(width: 200, height: 200)
            
        }
    }
}

#Preview {
    ContentView()
}
