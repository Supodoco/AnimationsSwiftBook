//
//  DataManager.swift
//  AnimationsSwiftBook
//
//  Created by Supodoco on 01.11.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
        
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
