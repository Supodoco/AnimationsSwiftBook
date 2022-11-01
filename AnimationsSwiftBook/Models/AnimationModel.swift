//
//  animationsModel.swift
//  AnimationsSwiftBook
//
//  Created by Supodoco on 01.11.2022.
//

import Foundation

struct AnimationModel {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandom() -> AnimationModel? {
        let store = DataStore.shared
        guard let preset = store.presets.randomElement(),
              let curve = store.curves.randomElement() else { return nil }
        let randomAnimation = AnimationModel(
            preset: preset,
            curve: curve,
            force: round(Double.random(in: 1...2)  *  100)  /  100,
            duration: round(Double.random(in: 0.7...1.5)  *  100)  /  100,
            delay: 0.3
        )
        return randomAnimation
    }
}


