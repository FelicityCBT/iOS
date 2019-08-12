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

class DemoSurvey3: UIViewController {
    /* Button for final demo survey questionaire */
    @IBOutlet weak var medicationTreatment: UISwitch!
    
    @IBOutlet weak var psychotherapyTreatment: UISwitch!
    @IBOutlet weak var otherMentalTreatment: UISwitch!
    @IBOutlet weak var preferHealthTreatment: UISwitch!
    @IBOutlet weak var otherText: UITextView!
    
    var checker = false
    
    override func viewDidLoad() {
        
       super.viewDidLoad()
    }
    @IBAction func next(_ sender: Any) {
        if medicationTreatment.isOn {
            Journal.current?.currentlyReceivingTreatment = "medications"
        }

        if psychotherapyTreatment.isOn {
            Journal.current?.currentlyReceivingTreatment = "psychotherapy"
        }
       
        if otherMentalTreatment.isOn {
            if otherText != nil {
                Journal.current?.currentlyReceivingTreatment = otherText.text
            }
        }
        
        if preferHealthTreatment.isOn {
            Journal.current?.currentlyReceivingTreatment = "none"
        }
         Journal.current?.userAcceptDemo = true
    }
    
    @IBAction func cancelDemo(_ sender: Any) {
        if checker == false {
            alertUser(message: "Are you sure you want to leave?")
            checker = true
        }
        Journal.current?.userAcceptDemo = false
        checker = false
    }
    
    func alertUser(message: String) {
        let alert = UIAlertController(title: "Cancelling Demo Survey", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "I do", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
}
