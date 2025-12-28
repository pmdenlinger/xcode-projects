//
//  PasteButtonView.swift
//  Buttons
//
//  Created by Paul Denlinger on 12/28/25.
//

import SwiftUI

struct PasteButtonView: View {
    @State var text = String()
    var body: some View {
        VStack {
            Text("PasteButton controls how you paste in macOS but is not available in iOS. For more information, check the \"See also\" section of this recipe.")
                .padding()
        }
        .navigationTitle("PasteButton")
    }
}

#Preview {
    PasteButtonView()
}
