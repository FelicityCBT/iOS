//
//  PhyAndGad2.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad2: UIViewController {
    /* Questino 3 */
    @IBOutlet weak var notAsleep: UISwitch!
    @IBOutlet weak var severalAsleep: UISwitch!
    @IBOutlet weak var moreAsleep: UISwitch!
    
    @IBOutlet weak var everyAsleep: UISwitch!
    
    /* Question 4 */
    @IBOutlet weak var notTired: UISwitch!
    @IBOutlet weak var severalTired: UISwitch!
    @IBOutlet weak var moreTired: UISwitch!
    @IBOutlet weak var everyTired: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func next(_ sender: Any) {
        
        if notAsleep.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalAsleep.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreAsleep.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyAsleep.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notTired.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalTired.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreTired.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyTired.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
    }
    
    
}
