//
//  PhqAndGad9.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhqAndGad9: UIViewController {
    /* Question 17 */
    @IBOutlet weak var notCheck: UISwitch!
    @IBOutlet weak var severalCheck: UISwitch!
    @IBOutlet weak var moreCheck: UISwitch!
    @IBOutlet weak var everyCheck: UISwitch!
    
    /* Final Phq and Gad */
    @IBOutlet weak var submitPhq: UIButton!
    @IBOutlet weak var cancelPhq: UIButton!
    var checker = false
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submit(_ sender: Any) {
        // 16th question
        if notCheck.isOn {
            Journal.current?.feelingAfraid = "not at all"
        }
        
        if severalCheck.isOn {
            Journal.current?.feelingAfraid = "several days"
        }
        
        if moreCheck.isOn {
            Journal.current?.feelingAfraid = "more than half"
        }
        
        if everyCheck.isOn {
            Journal.current?.feelingAfraid = "nearly everyday"
        }
        Journal.current?.userAcceptPhqAndGad = true
        
        // write to the PHQ and GAD survey (Override the Demo Survey to include both)
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
                           "littleInterestThings": (Journal.current?.littleInterestThings)! as String,
                           "feelingDown": (Journal.current?.feelingDown)! as String,
                           "troubleFallingAsleep": (Journal.current?.troubleFallingAsleep)! as String,
                           "feelingTired": (Journal.current?.feelingTired)! as String,
                           "poorAppetite": (Journal.current?.poorAppetite)! as String,
                           "feelingBadAboutSelf": (Journal.current?.feelingBadAboutSelf)! as String,
                           "troubleConcentrating": (Journal.current?.troubleConcentrating)! as String,
                           "movingSlowly": (Journal.current?.movingSlowly)! as String,
                           "thoughtSuicidal": (Journal.current?.thoughtSuicidal)! as String,
                           "feelingOnEdge": (Journal.current?.feelingOnEdge)! as String,
                           "uncontrolledWorrying": (Journal.current?.uncontrolledWorrying)! as String,
                           "worryingAboutDiffStuff": (Journal.current?.worryingAboutDiffStuff)! as String,
                           "troubleRelaxing": (Journal.current?.troubleRelaxing)! as String,
                           "beingRestless": (Journal.current?.beingRestless)! as String,
                           "becomingEasilyAnnoyed": (Journal.current?.becomingEasilyAnnoyed)! as String,
                           "feelingAfraid": (Journal.current?.feelingAfraid)! as String,
                           "levelOfDifficulty": (Journal.current?.levelOfDifficulty)! as String,
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
        }
    }
    
    @IBAction func cancelPhq(_ sender: Any) {
        if checker == false {
            alertUser(message: "Are you sure you want to leave?")
            checker = true
        }
        Journal.current?.userAcceptPhqAndGad = false
        checker = false
    }
    
    func alertUser(message: String) {
        let alert = UIAlertController(title: "Cancelling Phq and Gad Survey", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "I do", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
}
