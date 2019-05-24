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
        
        if notInterest.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalInterest.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreInterest.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyInterest.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notFeelingDown.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalDown.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreDown.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyDown.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
        
        
        
    }
    
}
