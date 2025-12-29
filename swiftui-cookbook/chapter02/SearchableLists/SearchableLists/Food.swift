//
//  Food.swift
//  SearchableLists
//
//  Created by Paul Denlinger on 12/29/25.
//

import Foundation

struct Food: Hashable {
    
    enum Category: String {
        case fruit
        case meat
        case vegetable
    }
    var name: String
    var category: Category
}
