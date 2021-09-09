//
//  ViewController.swift
//  Prework
//
//  Created by Nicholas Vardaro on 8/27/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!   
    @IBOutlet weak var tipAmountLabel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Calculate final amts
        tipAmountLabel1.text = String(format: "$%.2F", tip)
        totalLabel.text = String(format: "$%.2F", total)
    }
    
}

