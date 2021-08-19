//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    
    var tip = 0.10
    var noOfPeople = 2
    var billTotal = 0.0
    var finalresult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
    
        // dismissn keyboard when user choose one of tip
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle =  sender.currentTitle!
        let buttonMinusPercentSign = String(buttonTitle.dropLast())
        let buttonTitleAsNumber = Double(buttonMinusPercentSign)!
        tip = buttonTitleAsNumber / 100
        
        }
    
    @IBAction func steppedValueChanged(_ sender: UIStepper) {
        sender.maximumValue = 12
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        noOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        
        //if text is no empty
        if bill != "" {
            billTotal = Double(bill)!
            
            // multiply bill by tip and divid noOfPeople
            let res = billTotal * (1 + tip) / Double(noOfPeople)
            finalresult = String(format: "%.2f", res)
         
        }
        performSegue(withIdentifier: "goToResult", sender: self)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = finalresult
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = noOfPeople
        }
    }
    
}

