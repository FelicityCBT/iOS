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
        // 11th question
        if notStop.isOn {
            Journal.current?.uncontrolledWorrying = "not at all"
        }
        
        if severalStop.isOn {
            Journal.current?.uncontrolledWorrying = "several days"
        }
        
        if moreStop.isOn {
            Journal.current?.uncontrolledWorrying = "more than half"
        }
        
        if everyStop.isOn {
            Journal.current?.uncontrolledWorrying = "nearly everyday"
        }
        
        // 12th question
        if notWorrying.isOn {
            Journal.current?.worryingAboutDiffStuff = "not at all"
        }
        
        if severalWorrying.isOn {
            Journal.current?.worryingAboutDiffStuff = "several days"
        }
        
        if moreWorrying.isOn {
            Journal.current?.worryingAboutDiffStuff = "more than half"
        }
        
        if everyWorrying.isOn {
            Journal.current?.worryingAboutDiffStuff = "nearly everyday"
        }
      
    }
    
}
