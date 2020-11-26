//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Yani Buchkov on 26.11.20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {

    var bmiValue: Float = 0.0
    
    func getBmiValue() -> String {
        return String(format: "%.2f", bmiValue)
    }
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmiValue = weight / pow(height, 2)
    }
}
