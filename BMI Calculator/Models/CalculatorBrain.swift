//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Santiago Caraballo on 31/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var showingBMI = "0.0"
    
   mutating func calculateBMI (height: Float, weight: Float) -> String {
        let calc = weight / pow(height, 2)
        showingBMI = String(format: "%.1f", calc)
        return showingBMI
    }
    
    func getBMIValue() -> String {
        return showingBMI
    }
}
