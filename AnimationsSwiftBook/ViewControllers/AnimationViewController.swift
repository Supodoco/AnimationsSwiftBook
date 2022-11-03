//
//  ViewController.swift
//  AnimationsSwiftBook
//
//  Created by Supodoco on 01.11.2022.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    var nextAnimation = Animation.getRandomAnimation()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = nextAnimation.description
    }
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        descriptionLabel.text = nextAnimation.description
        
        springAnimationView.animation = nextAnimation.preset
        springAnimationView.curve = nextAnimation.curve
        springAnimationView.force = nextAnimation.force
        springAnimationView.duration = nextAnimation.duration
        springAnimationView.delay = nextAnimation.delay
        
        springAnimationView.animate()
                
        nextAnimation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
    }
}

