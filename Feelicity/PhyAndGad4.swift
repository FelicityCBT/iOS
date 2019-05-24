//
//  PhyAndGad4.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad4: UIViewController {
    /* Question 7 */
    @IBOutlet weak var notConcentrating: UISwitch!
    @IBOutlet weak var severalConcentrating: UISwitch!
    @IBOutlet weak var moreConcentrating: UISwitch!
    @IBOutlet weak var everyConcentrating: UISwitch!
    
    /* Question 8 */
    @IBOutlet weak var notMoving: UISwitch!
    @IBOutlet weak var severalMoving: UISwitch!
    @IBOutlet weak var moreMoving: UISwitch!
    @IBOutlet weak var everyMoving: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func next(_ sender: Any) {
        
        if notConcentrating.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalConcentrating.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreConcentrating.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyConcentrating.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notMoving.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalMoving.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreMoving.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyMoving.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
    }
    
    
}
