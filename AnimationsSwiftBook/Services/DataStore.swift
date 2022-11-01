//
//  DataManager.swift
//  AnimationsSwiftBook
//
//  Created by Supodoco on 01.11.2022.
//

import Foundation

class DataStore {
    static let shared = DataStore()
        
    let presets = [
        "fadeIn",
        "flipX",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "flipY",
        "shake"
    ]
    let curves = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad"
    ]
    
    private init() {}
}

