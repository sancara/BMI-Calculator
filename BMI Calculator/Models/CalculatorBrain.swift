//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Santiago Caraballo on 31/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    func getBMIValue() -> String {
        let formated = String(format: "%.1f", bmi?.value ?? 0.0)
        return formated
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Nothing to say"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .lightGray
    }
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat more fruits & vegetables", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies", color: .red)
        }
    }
}
