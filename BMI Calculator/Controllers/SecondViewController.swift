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
    @IBOutlet private weak var bmiResultLabel: UILabel!
    
    // MARK: - SecondViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showResult()
    }
    
    // MARK: - Private
    private func showResult() { }
    
    // MARK: -
}
