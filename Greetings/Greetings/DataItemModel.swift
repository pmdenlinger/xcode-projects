//
//  DataItemModel.swift
//  Greetings
//
//  Created by Paul Denlinger on 11/22/25.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: String
    let colorName: String
}
