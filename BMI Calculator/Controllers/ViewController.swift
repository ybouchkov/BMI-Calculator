//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets & Properties
    @IBOutlet private weak var heighSliderView: UISlider!
    @IBOutlet private weak var weightSliderView: UISlider!
    @IBOutlet private weak var heighLabel: UILabel!
    @IBOutlet private weak var weightLabel: UILabel!
    
    // MARK: - ViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    // MARK: - Private
    
    // MARK: - IBActions
    @IBAction
    private func heighSliderChanged(_ sender: UISlider) {
        let heigh = String(format: "%.2f", sender.value)
        heighLabel.text = "\(heigh)m"
    }
    
    @IBAction
    private func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0fkg", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction
    private func calculateBtnPressed(_ sender: UIButton) {
        let height = heighSliderView.value
        let weight = weightSliderView.value
        let bmi = weight / pow(height, 2) // (height * height)
        print(String(format: "%.2f", bmi))
    }
}

