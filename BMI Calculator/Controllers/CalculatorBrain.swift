//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Filip Hršak on 25.09.2022..
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI? = nil
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            let myColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: myColor )
        } else if (bmiValue < 24.9){
            let myColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Fit as a fidlle", color: myColor )
        } else{
            let myColor = #colorLiteral(red: 0.6087903976, green: 0.1108168885, blue: 0.1220056489, alpha: 1)
            bmi =  BMI(value: bmiValue, advice: "Eat less pies", color: myColor )
        }
        

    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.blue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }
    
    
}
