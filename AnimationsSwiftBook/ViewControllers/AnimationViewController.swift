//
//  ViewController.swift
//  AnimationsSwiftBook
//
//  Created by Supodoco on 01.11.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var nextAnimation: AnimationModel? = nil
        
    override func viewDidLoad() {
        super.viewDidLoad()
        if let animation = AnimationModel.getRandom() {
            springAnimationViewConfigure(animation)
            nextAnimation = animation
        }
    }
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        guard let animation = nextAnimation else { return }
        nextAnimation = AnimationModel.getRandom()
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        springAnimationView.animate()
        
        springAnimationViewConfigure(animation)
        
        if let animation = nextAnimation {
            sender.setTitle("Run \(animation.preset)", for: .normal)
        }
    }
    
    private func springAnimationViewConfigure(_ animation: AnimationModel) {
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = "delay: \(animation.delay)"
    }
}

