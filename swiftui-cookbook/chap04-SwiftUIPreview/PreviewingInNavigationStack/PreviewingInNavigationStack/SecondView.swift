//
//  SecondView.swift
//  PreviewingInNavigationStack
//
//  Created by Paul Denlinger on 12/30/25.
//

import SwiftUI

struct SecondView: View {
    
    var someText: String
    
    var body: some View {
        Text(someText)
            .navigationTitle("Second View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview("SecondView") {
    NavigationStack {
        SecondView(someText: "This is the second view")
    }
}
