//
//  PhyAndGad7.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad7: UIViewController {
    
    /* Question 13 */
    @IBOutlet weak var noRelaxing: UISwitch!
    @IBOutlet weak var severalRelaxing: UISwitch!
    @IBOutlet weak var moreRelaxing: UISwitch!
    @IBOutlet weak var everyRelaxing: UISwitch!
    
    /* Question 14 */
    @IBOutlet weak var notRestless: UISwitch!
    @IBOutlet weak var severalRestless: UISwitch!
    @IBOutlet weak var moreRestless: UISwitch!
    @IBOutlet weak var everyRestless: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func next(_ sender: Any) {
        // 13th question
        if noRelaxing.isOn {
            Journal.current?.troubleRelaxing = "not at all"
        }
        
        if severalRelaxing.isOn {
            Journal.current?.troubleRelaxing = "several days"
        }
        
        if moreRelaxing.isOn {
            Journal.current?.troubleRelaxing = "more than half"
        }
        
        if everyRelaxing.isOn {
            Journal.current?.troubleRelaxing = "nearly everyday"
        }
        
        // 14th question
        if notRestless.isOn {
            Journal.current?.beingRestless = "not at all"
        }
        
        if severalRestless.isOn {
            Journal.current?.beingRestless = "several days"
        }
        
        if moreRestless.isOn {
            Journal.current?.beingRestless = "more than half"
        }
        
        if everyRestless.isOn {
            Journal.current?.beingRestless = "nearly everyday"
        }
    }
    
}
