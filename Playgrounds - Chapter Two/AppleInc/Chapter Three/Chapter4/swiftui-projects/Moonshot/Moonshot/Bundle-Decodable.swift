//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Paul Denlinger on 12/28/25.
//

import Foundation

extension Bundle {
    func decode(_file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: _file, withExtension: nil) else {
            fatalError("Failed to locate \(_file) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(_file) from bundle.")
        }
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else {
            fatalError("Failed to decode \(_file) from bundle.")
        }
        return loaded
    }
}
