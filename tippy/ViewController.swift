//
//  ViewController.swift
//  tippy
//
//  Created by Ashley Toe on 10/6/19.
//  Copyright © 2019 Ashley Toe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onTap(_ sender: Any) {
        print ("hello")
               
               view.endEditing(true)
               // no matter what, when you click out, it escapes
    }
   
    @IBAction func calculateTip(_ sender: Any) {
    // Get the bill amount
           let bill = Double (billField.text!) ?? 0
           
           
           
           // Calculate the tip and total labels
           let tipPercentages = [0.15, 0.18, 0.2]
           let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
           let total = bill + tip
           // Update the tip and total label
           tipLabel.text = String(format:"$%.2f", tip)
           totalLabel.text = String(format: "$%.2f", total)
           
    }
   
}
