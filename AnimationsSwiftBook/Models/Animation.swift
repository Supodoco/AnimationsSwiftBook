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
        let store = DataStore.shared
        var options = ("", "")
        if let preset = store.presets.randomElement(),
           let curve = store.curves.randomElement() {
            options = (preset, curve)
        }
        return Animation(
            preset: options.0,
            curve: options.1,
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.7...1.5),
            delay: 0.3
        )
    }
}
