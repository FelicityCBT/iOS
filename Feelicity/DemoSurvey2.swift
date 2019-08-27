//
//  DemoSurvey.swift
//  Feelicity
//
//  Created by George Pu on 2/28/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class DemoSurvey2: UIViewController {
    
    /* Button tracking for diagnosed treatment */
    @IBOutlet weak var yesTreatment: UISwitch!
    @IBOutlet weak var noTreatment: UISwitch!
    @IBOutlet weak var preferTreatment: UISwitch!
    
    /* If yes, history button tracker */
    @IBOutlet weak var haveReceivedTreatment: UISwitch!
    @IBOutlet weak var currentlyReceivingTreatment: UISwitch!
    @IBOutlet weak var neverReceivedTreatment: UISwitch!
    @IBOutlet weak var preferHistoryTreatment: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func next(_ sender: Any) {
        // Question 6
        if yesTreatment.isOn {
            Journal.current?.diagnosedBefore = "Yes"
        } else if noTreatment.isOn {
            Journal.current?.diagnosedBefore = "No"
        } else if preferTreatment.isOn {
            Journal.current?.diagnosedBefore = "none"
        } else if haveReceivedTreatment.isOn {
            Journal.current?.diagnosedAndTreatment = "have received services"
        }
        
        // Question 7
        if currentlyReceivingTreatment.isOn {
            Journal.current?.diagnosedAndTreatment = "currently receiving services"
        } else if neverReceivedTreatment.isOn {
            Journal.current?.diagnosedAndTreatment = "have never received"
        } else if preferTreatment.isOn {
            Journal.current?.diagnosedAndTreatment = "none"
        }
        
        
    }
    
}
