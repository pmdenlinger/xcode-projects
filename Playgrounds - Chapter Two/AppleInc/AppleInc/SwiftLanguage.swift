//
//  SwiftLanguage.swift
//  AppleInc
//
//  Created by Paul Denlinger on 12/6/25.
//

open class SwiftLanguage {
    open func versionNumber() -> Float {
        return 5.0
    }
    
    open func supportedPlatforms() -> [String] {
        return ["macOS", "iOS", "tvOS", "watchOS", "Linux"]
    }
}

