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
        // 7th question
        if notConcentrating.isOn {
            Journal.current?.troubleConcentrating = "not at all"
        }
        
        if severalConcentrating.isOn {
            Journal.current?.troubleConcentrating = "several days"
        }
        
        if moreConcentrating.isOn {
            Journal.current?.troubleConcentrating = "more than half"
        }
        
        if everyConcentrating.isOn {
            Journal.current?.troubleConcentrating = "nearly everyday"
        }
        
        // 8th question
        if notMoving.isOn {
            Journal.current?.movingSlowly = "not at all"
        }
        
        if severalMoving.isOn {
            Journal.current?.movingSlowly = "several days"
        }
        
        if moreMoving.isOn {
            Journal.current?.movingSlowly = "more than half"
        }
        
        if everyMoving.isOn {
            Journal.current?.movingSlowly = "nearly everyday"
        }
      
        
    }
    
    
}
