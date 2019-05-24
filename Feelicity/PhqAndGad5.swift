//
//  PhqAndGad5.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhqAndGad5: UIViewController {
    
    /* Question 9 */
    
    @IBOutlet weak var noThoughts: UISwitch!
    @IBOutlet weak var severalThoughts: UISwitch!
    
    @IBOutlet weak var moreThoughts: UISwitch!
    @IBOutlet weak var everyThoughts: UISwitch!
    
    
    /* Question 10 */
    @IBOutlet weak var notNervous: UISwitch!
    @IBOutlet weak var severalNervous: UISwitch!
    @IBOutlet weak var moreNervous: UISwitch!
    @IBOutlet weak var everyNervous: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func next(_ sender: Any) {
        if noThoughts.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalThoughts.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreThoughts.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyThoughts.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if notNervous.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if severalNervous.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if moreNervous.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if everyNervous.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
    }
    
    
}
