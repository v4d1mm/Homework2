//
//  ViewController.swift
//  HomeWork2
//
//  Created by Vadimm on 25.05.2020.
//  Copyright © 2020 Vadym Kovalchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        View
        viewColor.layer.cornerRadius = 15
        let currentRed = CGFloat(redSliderOutlet.value)
        let currentGreen = CGFloat(greenSliderOutlet.value)
        let currentBlue = CGFloat(blueSliderOutlet.value)
        viewColor.backgroundColor = UIColor(displayP3Red: currentRed, green: currentGreen, blue: currentBlue, alpha: 1)
        //        Sliders
        redSliderOutlet.tintColor = .red
        greenSliderOutlet.tintColor = .green
    }
    
    // Red Slider
    @IBAction func redSliderAction() {
        let sliderValue = round(redSliderOutlet.value * 100) / 100
        redValueLabel.text = String(sliderValue)
        let greenValue = CGFloat(greenSliderOutlet.value)
        let blueValue = CGFloat(blueSliderOutlet.value)
        viewColor.backgroundColor = UIColor(displayP3Red: CGFloat(sliderValue), green: greenValue, blue: blueValue, alpha: 1)
    }
    //    Green Slider
    @IBAction func greenSliderAction() {
        let sliderValue = round(greenSliderOutlet.value * 100) / 100
        greenValueLabel.text = String(sliderValue)
        let redValue = CGFloat(redSliderOutlet.value)
        let blueValue = CGFloat(blueSliderOutlet.value)
        viewColor.backgroundColor = UIColor(displayP3Red: redValue, green: CGFloat(sliderValue), blue: blueValue, alpha: 1)
    }
    //    Blue Slider
    @IBAction func bluesliderAction() {
        let sliderValue = round(blueSliderOutlet.value * 100) / 100
        blueValueLabel.text = String(sliderValue)
        let redValue = CGFloat(redSliderOutlet.value)
        let greenValue = CGFloat(greenSliderOutlet.value)
        viewColor.backgroundColor = UIColor(displayP3Red: redValue, green: greenValue, blue: CGFloat(sliderValue), alpha: 1)
    }
    
}

