//
//  BackgroundView.swift
//  Greetings
//
//  Created by Paul Denlinger on 11/23/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                Color("BackgroundGradientStart"),
                Color("BackgroundGradientEnd")
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.3)
        .ignoresSafeArea()
    }
}

#Preview("Light") {
    BackgroundView()
        .preferredColorScheme(.light)
}

#Preview("Dark") {
    BackgroundView()
        .preferredColorScheme(.dark)
}
