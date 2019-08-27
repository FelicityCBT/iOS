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

class DemoSurvey: UIViewController {
    /* Question number 1 buttons */
    @IBOutlet weak var femaleGender: UISwitch!
    @IBOutlet weak var maleGender: UISwitch!
    @IBOutlet weak var otherGender: UISwitch!
    @IBOutlet weak var prefGender: UISwitch!
    
    /* Question number 2 for button tracking */
    @IBOutlet weak var ageVal: UISwitch!
    @IBOutlet weak var prefAge: UISwitch!
    @IBOutlet weak var ageText: UITextView!
    @IBOutlet weak var otherText: UITextView!
    
    
    /* Quesstion number 3 for button tracking and indexing */
    @IBOutlet weak var whiteRace: UISwitch!
    @IBOutlet weak var hispanicRace: UISwitch!
    @IBOutlet weak var africanAmericanRace: UISwitch!
    @IBOutlet weak var nativeAmericanRace: UISwitch!
    @IBOutlet weak var AsianRace: UISwitch!
    @IBOutlet weak var otherRace: UISwitch!
    @IBOutlet weak var prefRace: UISwitch!
    
    
    override func viewDidLoad() {
        print("hello dude")
        super.viewDidLoad()
    }
    
    @IBAction func next(_ sender: Any) {
        // First Question
        if femaleGender.isOn {
            Journal.current?.gender = "female"
        } else if maleGender.isOn {
            Journal.current?.gender = "male"
        } else if otherGender.isOn {
            Journal.current?.gender = "other"
        } else if prefGender.isOn {
            Journal.current?.gender = "no say"
        }

        // Second Question
        if ageVal.isOn {
            if (ageText.text != nil) {
                Journal.current?.age = Int(ageText.text)
            }
        } else if prefAge.isOn {
            Journal.current?.age = 0
        }

        // Third Question
        if whiteRace.isOn {
            Journal.current?.raceEthnicity = "white"
        } else if hispanicRace.isOn {
            Journal.current?.raceEthnicity = "hispanic"
        } else if africanAmericanRace.isOn {
            Journal.current?.raceEthnicity = "african american"
        } else if nativeAmericanRace.isOn {
            Journal.current?.raceEthnicity = "native american"
        } else if AsianRace.isOn {
            Journal.current?.raceEthnicity = "asian"
        } else if otherRace.isOn {
            if otherText.text != nil {
                Journal.current?.raceEthnicity = otherText.text
            }
        } else if prefRace.isOn {
            Journal.current?.raceEthnicity = "none"
        }
       
        
    }
    
}
