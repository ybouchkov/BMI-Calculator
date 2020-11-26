//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Yani Buchkov on 26.11.20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - IBOutlets & Properties
    var bmiValue = "0.0"
        
    // MARK: - SecondViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        initalLabel()
        showResult()
    }
    
    // MARK: - Private
    private func showResult() { }
    
    private func initalLabel() {
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0.0,
                             y: 0.0,
                             width: 100,
                             height: 50)
        view.addSubview(label)
    }
    
    // MARK: - IBActions:
    @IBAction
    private func recalculateButtonPressed(_ sender: UIButton) { }
}
