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
        // 5th question
        if notAppetite.isOn {
            Journal.current?.poorAppetite = "not at all"
        }
        
        if severalAppetite.isOn {
            Journal.current?.poorAppetite = "several days"
        }
        
        if moreAppetite.isOn {
            Journal.current?.poorAppetite = "more than half"
        }
        
        if everyAppetite.isOn {
            Journal.current?.poorAppetite = "nearly everyday"
        }
        
        // 6th question
        if notBad.isOn {
            Journal.current?.feelingBadAboutSelf = "not at all"
        }
        
        if severalBad.isOn {
            Journal.current?.feelingBadAboutSelf = "several days"
        }
        
        if moreBad.isOn {
            Journal.current?.feelingBadAboutSelf = "more than half"
        }
        
        if everyBad.isOn {
            Journal.current?.feelingBadAboutSelf = "nearly everyday"
        }
      
    }
    
    
}
