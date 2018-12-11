//
//  ViewController.swift
//  FinalGradeTipCalculator
//
//  Created by JUSTIN VENEGAS on 11/12/18.
//  Copyright © 2018 JUSTIN VENEGAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theCostOfTheMealTextField: UITextField!
    @IBOutlet weak var tipPercentageTextField: UITextField!
    @IBOutlet weak var theTipYouLeavingLabel: UILabel!
    @IBOutlet weak var theCostOfTheMealLabel: UILabel!
    @IBOutlet weak var totalCostPlusTipLabel: UILabel!
   
    var tipPercentage = Double()
    var bill = Double()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func calculateEverthing(_ sender: Any) {
        tipPercentage = Double(tipPercentageTextField.text!) ?? 0
        bill = Double(theCostOfTheMealTextField.text!) ?? 0//Bill
        let tipDecimal = tipPercentage / 100
        let tipYouWantToLeave = tipDecimal * bill
        let totalCostPlusTheTip = tipYouWantToLeave + bill
        theTipYouLeavingLabel.text = "the tip you are leaving:\(tipYouWantToLeave)"
        totalCostPlusTipLabel.text = "the total cost plus the tip you are leaving:\(totalCostPlusTheTip)"
        print(tipYouWantToLeave)
        
//        totalPayLabel.text = "Total Pay = $\(totalPay)"
        
        //    let number1 = Double(textField1.text!)
        
        
    }
    
    
    
    
    
    

}

