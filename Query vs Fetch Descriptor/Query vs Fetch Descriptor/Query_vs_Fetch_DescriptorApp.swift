//
//  Query_vs_Fetch_DescriptorApp.swift
//  Query vs Fetch Descriptor
//
//  Created by Paul Denlinger on 11/25/25.
//

import SwiftUI
import SwiftData

@main
struct Query_vs_Fetch_DescriptorApp: App {
    var body: some Scene {
        WindowGroup {
            TodoListView()
                .modelContainer(for: TodoModel.self)
        }
    }
}
