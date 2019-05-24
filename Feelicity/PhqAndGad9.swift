//
//  PhqAndGad9.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhqAndGad9: UIViewController {
    /* Question 17 */
    @IBOutlet weak var notCheck: UISwitch!
    @IBOutlet weak var severalCheck: UISwitch!
    @IBOutlet weak var moreCheck: UISwitch!
    @IBOutlet weak var everyCheck: UISwitch!
    
    /* Final Phq and Gad */
    @IBOutlet weak var submitPhq: UIButton!
    @IBOutlet weak var cancelPhq: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func submit(_ sender: Any) {
        if notCheck.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if severalCheck.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if moreCheck.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if everyCheck.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
       
    }
}
