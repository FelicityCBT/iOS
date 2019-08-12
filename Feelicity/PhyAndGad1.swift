//
//  PhyAndGad1.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad1: UIViewController {
    
    /* Question 1 */
    @IBOutlet weak var notInterest: UISwitch!
    @IBOutlet weak var severalInterest: UISwitch!
    @IBOutlet weak var moreInterest: UISwitch!
    @IBOutlet weak var everyInterest: UISwitch!
    
    /* Question 2 */
    
    @IBOutlet weak var notFeelingDown: UISwitch!
    @IBOutlet weak var severalDown: UISwitch!
    @IBOutlet weak var moreDown: UISwitch!
    @IBOutlet weak var everyDown: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func next(_ sender: Any) {
        // 1st question
        if notInterest.isOn {
            Journal.current?.littleInterestThings = "not at all"
        }
        
        if severalInterest.isOn {
            Journal.current?.littleInterestThings = "several days"
        }
       
        if moreInterest.isOn {
            Journal.current?.littleInterestThings = "more than half"
        }
        
        if everyInterest.isOn {
            Journal.current?.littleInterestThings = "nearly everyday"
        }
       
        // 2nd question
        if notFeelingDown.isOn {
            Journal.current?.feelingDown = "not at all"
        }
      
        if severalDown.isOn {
            Journal.current?.feelingDown = "several days"
        }
        
        if moreDown.isOn {
            Journal.current?.feelingDown = "more than half"
        }
        
        if everyDown.isOn {
            Journal.current?.feelingDown = "nearly everyday"
        }
        
    }
}
