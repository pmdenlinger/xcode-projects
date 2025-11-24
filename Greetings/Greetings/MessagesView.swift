//
//  MessagesView.swift
//  Greetings
//
//  Created by Paul Denlinger on 11/23/25.
//

import SwiftUI

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", colorName: "MessageGreen"),
        .init(text: "Welcome to Swift Programming!", colorName: "MessageGray"),
        .init(text: "Are you ready to,", colorName: "MessageYellow"),
        .init(text: "start exploring?", colorName: "MessageRed"),
        .init(text: "Boom.", colorName: "MessagePurple")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(
                    text: dataItem.text,
                    color: Color(dataItem.colorName)
                )
            }
        }
    }
}

#Preview {
    MessagesView()
}
