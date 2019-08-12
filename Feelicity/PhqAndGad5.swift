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
        
        // 9th question
        if noThoughts.isOn {
            Journal.current?.thoughtSuicidal = "not at all"
        }
        
        if severalThoughts.isOn {
            Journal.current?.thoughtSuicidal = "several days"
        }
        
        if moreThoughts.isOn {
            Journal.current?.thoughtSuicidal = "more than half"
        }
        
        if everyThoughts.isOn {
            Journal.current?.thoughtSuicidal = "nearly everyday"
        }
    
        // 10th question
        if notNervous.isOn {
            Journal.current?.feelingOnEdge = "not at all"
        }
        
        if severalNervous.isOn {
            Journal.current?.feelingOnEdge = "several days"
        }
        
        if moreNervous.isOn {
            Journal.current?.feelingOnEdge = "more than half"
        }
        
        
        if everyNervous.isOn {
            Journal.current?.feelingOnEdge = "nearly everyday"
        }
    }
    
    
}
