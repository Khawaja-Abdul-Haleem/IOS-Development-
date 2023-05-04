//
//  ViewController.swift
//  DropDown Demo
//
//  Created by Khawaja Abdul Haleem on 11/03/2022.
//

import UIKit
import DropDown

class ViewController: UIViewController {

    @IBOutlet weak var dropDownView: UIView!
    
    @IBOutlet weak var labelTitle: UILabel!
    
    let dropDown = DropDown()
    let namesArray = ["Admin", "Doctor", "Jr.Doc", "Patient"]
    
    var role = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dropDown.anchorView = dropDownView
        dropDown.dataSource = namesArray
        
        // Top of drop down will be below the anchorView
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        
        // When drop down is displayed with `Direction.top`, it will be above the anchorView
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        
        dropDown.direction = .bottom
        
        // if on top
      //  dropDown.direction = .bottom
        
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
        //  print("Selected item: \(item) at index: \(index)")
            self.labelTitle.text = namesArray[index]
            role = namesArray[index]
        }
        
    }

    @IBAction func selectFieldTapped(_ sender: UIButton) {
        dropDown.show()
        
    }

    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        // print("Your Role: \(role)")
        if role == "Doctor" {
            print("Doctor doctor")
        } else {
            print("Your Role: \(role)")
        }
    }
    
}

