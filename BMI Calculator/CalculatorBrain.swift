//
//  File.swift
//  BMI Calculator
//
//  Created by Peggy Wollenhaupt on 6/21/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error: nil advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Ideal weight", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if bmiValue < 30 {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))
        } else if bmiValue < 40 {
            bmi = BMI(value: bmiValue, advice: "Obese", color: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Extremely obese", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
    }
    
}
