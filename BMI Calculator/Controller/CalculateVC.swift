//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Aryan Shrivastava on 20/07/20.
//  Copyright © 2020 Aryan Shrivastava. All rights reserved.
//

import UIKit

class CalculateVC: UIViewController {
    
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var calculateButton: UIButton!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculateButton.layer.cornerRadius = K.defaultCornerRadius
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format:"%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format:"%.1f" , sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calBMI(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: K.segueIdentifier, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.segueIdentifier
        {
            let secondVC = segue.destination as! ResultVC
            secondVC.advice = calculatorBrain.getAdvice()
            secondVC.backgroungLabel = calculatorBrain.getBackgroundColour()
            secondVC.bmiValue = calculatorBrain.getBMI()
        }
    }
    
}

