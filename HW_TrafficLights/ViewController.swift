//
//  ViewController.swift
//  HW_TrafficLights
//
//  Created by GD88 on 09.02.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIImageView!
    @IBOutlet var yellowLight: UIImageView!
    @IBOutlet var greenLight: UIImageView!
    
    @IBOutlet var toggleButton: UIButton!
    var currentLight = CurrentLight.red
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2

        toggleButton.layer.cornerRadius = 10
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }

    @IBAction func makeButtonAction() {
        toggleButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = lightOn
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOff
            currentLight = CurrentLight.yellow
        case .yellow:
            yellowLight.alpha = lightOn
            redLight.alpha = lightOff
            greenLight.alpha = lightOff
            currentLight = CurrentLight.green
        case .green:
            greenLight.alpha = lightOn
            redLight.alpha = lightOff
            yellowLight.alpha = lightOff
            currentLight = CurrentLight.red
        }
    }
}

