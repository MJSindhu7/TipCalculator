//
//  ViewController.swift
//  TipCalculator
//
//  Created by SindhuRam on 8/19/20.
//  Copyright © 2020 SindhuRam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    @IBAction func onClick(_ sender: Any) {
                view.endEditing(true);
    }


    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipSelector.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

