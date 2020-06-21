//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Peggy Wollenhaupt on 6/20/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
