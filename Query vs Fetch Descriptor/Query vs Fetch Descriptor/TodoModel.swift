//
//  TodoModel.swift
//  Query vs Fetch Descriptor
//
//  Created by Paul Denlinger on 11/25/25.
//

import Foundation
import SwiftData

@Model
class TodoModel {
    var title: String
    var date: Date
    
    init(title: String, date: Date) {
        self.title = title
        self.date = date
    } 
}
