//
//  Brain.swift
//  BMI Calculator
//
//  Created by Aryan Shrivastava on 21/07/20.
//  Copyright © 2020 Aryan Shrivastava. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmiObject:BMI?
    
    mutating func calBMI(height: Float , weight: Float) {
        let bmiValue: Float = weight / pow(height, 2)
        if bmiValue < 18.5{
            let value = String(format: "%.2f" , bmiValue)
            let adviceText = K.bmiAdvice.low
            let colour = K.backgroundColour.yellow
            
            bmiObject = BMI(bmiValue: value, advice: adviceText, backgroundColour: colour)
        }else if bmiValue > 24.9{
            let value = String(format: "%.2f" , bmiValue)
            let adviceText = K.bmiAdvice.high
            let colour = K.backgroundColour.red
            
            bmiObject = BMI(bmiValue: value, advice: adviceText, backgroundColour: colour)
        }else{
            let value = String(format: "%.2f" , bmiValue)
            let adviceText = K.bmiAdvice.normal
            let colour = K.backgroundColour.green
            
            bmiObject = BMI(bmiValue: value, advice: adviceText, backgroundColour: colour)
        }
    }
    
    func getBMI() -> String {
        return bmiObject?.bmiValue ?? "0.0"
    }
    
    func getAdvice() -> String {
        return bmiObject?.advice ?? "No Advice"
    }
    
    func getBackgroundColour() -> String {
        return bmiObject?.backgroundColour ?? "YellowBackground"
    }
}
