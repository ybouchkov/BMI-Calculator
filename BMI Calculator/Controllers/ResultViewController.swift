//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yani Buchkov on 26.11.20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - IBOutlets & Properties
    @IBOutlet private weak var bmiLabel: UILabel!
    @IBOutlet private weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    
    // MARK: - SecondViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        showResult()
    }
    
    // MARK: - Private
    private func showResult() {
        bmiLabel.text = bmiValue
    }
    
    // MARK: - IBActions:
    @IBAction
    private func recalculateBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
