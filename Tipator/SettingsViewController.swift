//
//  SettingsViewController.swift
//  Tipator
//
//  Created by Ali Hamdany on 12/24/15.
//  Copyright © 2015 Ali Hamdany. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {

    @IBOutlet weak var currencySelecter: UISegmentedControl!
    @IBOutlet weak var tipPercRight: UITextField!
    @IBOutlet weak var tipPerMiddle: UITextField!
    @IBOutlet weak var tipPerLeft: UITextField!
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tipPerLeftValue = defaults.integerForKey("tip_Perc_Left")
        let tipPerMiddleValue = defaults.integerForKey("tip_Perc_Middle")
        let tipPerRightValue = defaults.integerForKey("tip_Perc_Right")
        tipPerLeft.text = String(tipPerLeftValue)
        tipPerMiddle.text = String(tipPerMiddleValue)
        tipPercRight.text = String(tipPerRightValue)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipPerLeftOnAction(sender: AnyObject) {
        defaults.setInteger(Int(tipPerLeft.text!)!, forKey: "tip_Perc_Left")
        defaults.synchronize()
        
    }
    
    @IBAction func tipPerMiddleOnAction(sender: AnyObject) {
        defaults.setInteger(Int(tipPerMiddle.text!)!, forKey: "tip_Perc_Middle")
        defaults.synchronize()
    }
    
    @IBAction func tipPerRightOnAction(sender: AnyObject) {
        defaults.setInteger(Int(tipPercRight.text!)!, forKey: "tip_Perc_Right")
        defaults.synchronize()
    }
    
    //override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     //   var destViewController: ViewController = segue.destinationViewController as /ViewController
        
       // destViewController.tipPercLeft = Int(tipPerLeft.text!)!
    //}
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
