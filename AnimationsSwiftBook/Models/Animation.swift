//
//  animationsModel.swift
//  AnimationsSwiftBook
//
//  Created by Supodoco on 01.11.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        "preset: \(preset)\n"
        + "curve: \(curve)\n"
        + "force: \(String(format: "%.2f", force))\n"
        + "duration: \(String(format: "%.2f", duration))\n"
        + "delay: \(delay)"
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "shake",
            curve: DataStore.shared.presets.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.7...1.5),
            delay: 0.3
        )
    }
}
