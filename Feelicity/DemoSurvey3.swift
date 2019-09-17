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
    var ref: DatabaseReference!
    
    var checker = false
    
    override func viewDidLoad() {
        
       super.viewDidLoad()
    }
    @IBAction func next(_ sender: Any) {
        if medicationTreatment.isOn {
            Journal.current?.currentlyReceivingTreatment = "medications"
        } else if psychotherapyTreatment.isOn {
            Journal.current?.currentlyReceivingTreatment = "psychotherapy"
        } else if otherMentalTreatment.isOn {
            if otherText != nil {
                Journal.current?.currentlyReceivingTreatment = otherText.text
            }
        } else if preferHealthTreatment.isOn {
            Journal.current?.currentlyReceivingTreatment = "none"
        }
         Journal.current?.userAcceptDemo = true
        
        // Write the Demo Survey to Firebase
        if Auth.auth().currentUser == nil {
            return
        }
        else {
            ref = Database.database().reference()
            let key = Auth.auth().currentUser!.uid
            let journal = ["User": key,
                           "Timestamp": Date(),
                           "Date": Date(),
                           "DateAsSeconds": Date().timeIntervalSince1970,
                           
                           // Added by George on 9/16 for Demo Survey
                "Gender":
                    (Journal.current?.gender)! as String,
                "Age":
                    (Journal.current?.age)! as Int,
                "Race/Ethnicity":
                    (Journal.current?.raceEthnicity)! as String,
                "CollegeStudent":
                    (Journal.current?.collegeStudent)! as String,
                "CurrentlyEnrolledCollegeYear":
                    (Journal.current?.currentlyEnrolled)! as String,
                "RecentlyDiagnosed":
                    (Journal.current?.diagnosedBefore)! as String,
                "HistoryOfMentalTreatment":
                    (Journal.current?.diagnosedAndTreatment)! as String,
                "CurrentlyMentalHealth":
                    (Journal.current?.currentlyReceivingTreatment)! as String] as [String : Any]
            
            let id = UUID().uuidString
            ref.child("Journal").child(id).setValue(journal, withCompletionBlock: { (error, snapshot) in
                self.ref?.child("Users").child(key).child("Journal").child(journal["Date"] as! String).updateChildValues([id: journal["Timestamp"]!])
                
            })
        }   // else clause
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
