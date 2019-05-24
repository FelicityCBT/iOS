//
//  PhqAndGad6.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhqAndGad6: UIViewController {
    
    /* Question 11 */
    @IBOutlet weak var notStop: UISwitch!
    @IBOutlet weak var severalStop: UISwitch!
    @IBOutlet weak var moreStop: UISwitch!
    @IBOutlet weak var everyStop: UISwitch!
    
    /* Question 12 */
    @IBOutlet weak var notWorrying: UISwitch!
    @IBOutlet weak var severalWorrying: UISwitch!
    @IBOutlet weak var moreWorrying: UISwitch!
    @IBOutlet weak var everyWorrying: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func next(_ sender: Any) {
        if notStop.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalStop.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreStop.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyStop.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notWorrying.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalWorrying.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreWorrying.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyWorrying.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
    }
    
}
