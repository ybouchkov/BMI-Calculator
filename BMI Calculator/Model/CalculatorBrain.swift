//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Yani Buchkov on 26.11.20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    // MARK: - Properties
    var bmiValue: BMI?
    
    // MARK: - Methods
    func getBmiValue() -> String {
        return String(format: "%.2f", bmiValue?.value ?? 0.0)
    }
    
    // MARK: - Immutability
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmi < 42.9 {
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmiValue = BMI(value: bmi, advice: "Eat less pies!!!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "NO ADVICE FOR YOU!!!"
    }

    func getColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
    }
}
