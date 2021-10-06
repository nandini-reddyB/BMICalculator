//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nandini B on 06/10/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
//calculating bmi in a seperate struct and returning its value
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
       
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "NO advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
        
    }
    
    mutating func calculateBMI(height: Float , weight: Float) {
       let bmiValue = weight / (height * height)
        

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More" , color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            print(bmi ?? "default value")
//            print("UnderWeight")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!" , color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
            print(bmi ?? "default value")
//            print("normal Weight")
        } else {
             bmi = BMI(value: bmiValue, advice: " Eat less " , color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            print(bmi ?? "default value")
//            print("OverWeight")
        }
    }
    
}
