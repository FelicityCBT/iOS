//
//  PhqAndGad4.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhqAndGad8: UIViewController {
    
    /* Question 15 */
    @IBOutlet weak var notAnnoyed: UISwitch!
    @IBOutlet weak var severalAnnoyed: UISwitch!
    @IBOutlet weak var moreAnnoyed: UISwitch!
    @IBOutlet weak var everyAnnoyed: UISwitch!
    
    /* Question 16 */
    @IBOutlet weak var notAfraid: UISwitch!
    @IBOutlet weak var severalAfraid: UISwitch!
    @IBOutlet weak var moreAfraid: UISwitch!
    @IBOutlet weak var everyAfraid: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func next(_ sender: Any) {
        if notAnnoyed.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalAnnoyed.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreAnnoyed.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyAnnoyed.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notAfraid.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalAfraid.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreAfraid.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyAfraid.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
        
    }
    
}
