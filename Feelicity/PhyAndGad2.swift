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
        // 4th question
        if notAsleep.isOn {
            Journal.current?.troubleFallingAsleep = "not at all"
        }
        
        if severalAsleep.isOn {
            Journal.current?.troubleFallingAsleep = "several days"
        }
        
        if moreAsleep.isOn {
            Journal.current?.troubleFallingAsleep = "more than half"
        }
        
        if everyAsleep.isOn {
            Journal.current?.troubleFallingAsleep = "nearly everyday"
        }
       
        // 5th question
        if notTired.isOn {
            Journal.current?.feelingTired = "not at all"
        }
        
        if severalTired.isOn {
            Journal.current?.feelingTired = "several days"
        }
        
        if moreTired.isOn {
            Journal.current?.feelingTired = "more than half"
        }
        
        if everyTired.isOn {
            Journal.current?.feelingTired = "nearly everyday"
        }
        
    }
    
}
