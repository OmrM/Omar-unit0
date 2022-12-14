//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Omar Muniz on 8/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip =
        bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip Amount label
        //this looks like some kind of regex, but it's % and then text.
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update Total amount label
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

