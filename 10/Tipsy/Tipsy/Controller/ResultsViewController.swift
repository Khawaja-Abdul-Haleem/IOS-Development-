//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Khawaja Abdul Haleem on 30/04/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
   
    var result = "0.0"
    var tip = 10
    var split = 2
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = result
        settingsLabel.text = "Split b/w \(split) people, with \(tip)% Tip"

    }
 
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
