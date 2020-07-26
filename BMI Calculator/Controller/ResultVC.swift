//
//  ResultVC.swift
//  BMI Calculator
//
//  Created by Aryan Shrivastava on 21/07/20.
//  Copyright © 2020 Aryan Shrivastava. All rights reserved.
//

import UIKit
import CLTypingLabel

class ResultVC: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var bmiLabel: CLTypingLabel!
    @IBOutlet weak var adviceLabel: CLTypingLabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    var backgroungLabel: String?
    var bmiValue: String?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        recalculateButton.layer.cornerRadius = K.defaultCornerRadius
        
        backgroundImage.image = UIImage(named: backgroungLabel!)
        bmiLabel.text = bmiValue!
        adviceLabel.text = advice!
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
