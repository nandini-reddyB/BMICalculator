//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var Calculatorbrain = CalculatorBrain() //calculator brain object
//    var bmiValue = "0.0"
    

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //two ib actions when sliders are triggered
    @IBAction func heightSliderChnaged(_ sender: UISlider) {
        //height to two decimal places
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f",  sender.value) //or Int(sender.value)
        weightLabel.text = "\(weight)kg"
        //weight with no decimal places
        //print(Int(sender.value))
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
      let height = heightSlider.value
        let weight = weightSlider.value
        
        //to calculate the bmi
//        let bmi = weight / (height * height)
//        bmiValue = String(format:"%.1f", bmi)
//        print("Body Mass Index : \(bmiValue)")
        
        Calculatorbrain.calculateBMI(height: height , weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
       
        
        //creating object for secondviewcontroller
        /*let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true, completion: nil) */
    }
    
    //overriding segue method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController //destination is the view controller for the segue
//            destinationVC.bmiValue = bmiValue
            destinationVC.bmiValue = Calculatorbrain.getBMIValue()
            destinationVC.advice =  Calculatorbrain.getAdvice()
            destinationVC.color = Calculatorbrain.getColor()
        }
    }
}

