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
        // 15th question
        if notAnnoyed.isOn {
            Journal.current?.becomingEasilyAnnoyed = "not at all"
        }
        
        if severalAnnoyed.isOn {
            Journal.current?.becomingEasilyAnnoyed = "several days"
        }
        
        if moreAnnoyed.isOn {
            Journal.current?.becomingEasilyAnnoyed = "more than half"
        }
        
        if everyAnnoyed.isOn {
            Journal.current?.becomingEasilyAnnoyed = "nearly everyday"
        }
       
        // 16th question
        if notAfraid.isOn {
            Journal.current?.feelingAfraid = "not at all"
        }
        
        if severalAfraid.isOn {
            Journal.current?.feelingAfraid = "several days"
        }
        
        if moreAfraid.isOn {
            Journal.current?.feelingAfraid = "more than half"
        }
        
        if everyAfraid.isOn {
            Journal.current?.feelingAfraid = "nearly everyday"
        }
    }
}
