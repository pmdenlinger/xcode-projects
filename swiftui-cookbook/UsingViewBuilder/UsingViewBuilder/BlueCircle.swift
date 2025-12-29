//
//  BlueCircle.swift
//  UsingViewBuilder
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct BlueCircle<Content: View> {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        HStack {
            content
            Spacer()
            Circle()
                .fill(.blue)
                .frame(width: 20, height: 30)
        }
        .padding()
    }
}


