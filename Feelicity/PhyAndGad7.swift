//
//  PhyAndGad7.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad7: UIViewController {
    
    /* Question 13 */
    @IBOutlet weak var noRelaxing: UISwitch!
    @IBOutlet weak var severalRelaxing: UISwitch!
    @IBOutlet weak var moreRelaxing: UISwitch!
    @IBOutlet weak var everyRelaxing: UISwitch!
    
    /* Question 14 */
    @IBOutlet weak var notRestless: UISwitch!
    @IBOutlet weak var severalRestless: UISwitch!
    @IBOutlet weak var moreRestless: UISwitch!
    @IBOutlet weak var everyRestless: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func next(_ sender: Any) {
        if noRelaxing.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalRelaxing.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreRelaxing.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyRelaxing.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notRestless.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalRestless.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreRestless.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyRestless.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
    }
    
}
