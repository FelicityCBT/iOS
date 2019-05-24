//
//  PhyAndGad3.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad3: UIViewController {
    
    /* Question 5 */
    @IBOutlet weak var notAppetite: UISwitch!
    @IBOutlet weak var severalAppetite: UISwitch!
    @IBOutlet weak var moreAppetite: UISwitch!
    @IBOutlet weak var everyAppetite: UISwitch!
    
    
    /* Question 6 */
    @IBOutlet weak var notBad: UISwitch!
    @IBOutlet weak var severalBad: UISwitch!
    @IBOutlet weak var moreBad: UISwitch!
    @IBOutlet weak var everyBad: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func next(_ sender: Any) {
        
        if notAppetite.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalAppetite.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreAppetite.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyAppetite.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notBad.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalBad.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreBad.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyBad.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
    }
    
    
}
