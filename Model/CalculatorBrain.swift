//
//  CalculatorBrain.swift
//  BodyMassIndex
//
//  Created by Nikolay Pochekuev on 03.12.2019.
//  Copyright © 2019 Nikolay Pochekuev. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Кушай больше пирогов!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Как огурчик!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Кушай меньше пирогов!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format:"%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        let adviceValue = bmi?.advice ?? "You shall type data first!"
        return adviceValue
    }
    
    func getColor() -> UIColor {
        var colorValue: UIColor? = nil
        if let safeColorValue = bmi?.color  { colorValue = safeColorValue} else {
            print ("you shall type data first")
        }
        return colorValue!
    }
}
