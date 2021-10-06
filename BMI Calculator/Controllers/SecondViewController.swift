//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Nandini B on 04/10/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

//for second screen
import UIKit
import Foundation

class SecondViewController: UIViewController  //new class created
{
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        //creating label using UIKit -->Inside ui ki there is a uilabel
        let label = UILabel()  //initialise uilabel object to a variable
        label.text = bmiValue
        
       // The frame rectangle, which describes the view’s location and size in its superview’s coordinate system.
        label.frame = CGRect(x: 20, y: 0, width: 500, height: 800)
        //to put label onto the screen
        view.addSubview(label)
    }
 
}
