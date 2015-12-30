//
//  ViewController.swift
//  Tipator
//
//  Created by Ali Hamdany on 12/18/15.
//  Copyright © 2015 Ali Hamdany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var tipHeading: UILabel!
    @IBOutlet weak var totalHeading: UILabel!
    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        let tipPercLeft = defaults.integerForKey("tip_Perc_Left")
        print(tipPercLeft)
        tipLabel.hidden = true
        tipSelector.hidden = true
        totalLabel.hidden = true
        tipHeading.hidden = true
        totalHeading.hidden = true
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onAddingBillAmount(sender: AnyObject) {
        
        let tipPercentageArray = [0.15, 0.18, 0.2]
        var tipPercentage = tipPercentageArray[tipSelector.selectedSegmentIndex]
        var billAmount = 0.0
        var tipAmount = 0.0
        var totalAmount = 0.0
        var billString: String
        
        tipLabel.hidden = false
        tipSelector.hidden = false
        totalLabel.hidden = false
        tipHeading.hidden = false
        totalHeading.hidden = false
        
        billString = billField.text!
        if(!billString.isEmpty){
        billAmount = Double(billString)!
        }
        tipAmount = billAmount*tipPercentage
        totalAmount = tipAmount + billAmount
       
        tipLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(totalAmount)"
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }
    
    @IBAction func onAnywhereTap(sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    

    
}

