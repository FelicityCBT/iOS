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

class DemoSurvey1: UIViewController {
    
    /* Button tracker for if a college student */
    @IBOutlet weak var yesUcsd: UISwitch!
    @IBOutlet weak var yesColl: UISwitch!
    @IBOutlet weak var noColl: UISwitch!
    @IBOutlet weak var prefStudent: UISwitch!
    
    /* Enrolled in college button tracker */
    @IBOutlet weak var freshYear: UISwitch!
    @IBOutlet weak var sophoYear: UISwitch!
    @IBOutlet weak var juniorYear: UISwitch!
    @IBOutlet weak var seniorYear: UISwitch!
    @IBOutlet weak var superSeniorYear: UISwitch!
    @IBOutlet weak var noYear: UISwitch!
    @IBOutlet weak var prefYear: UISwitch!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func next(_ sender: Any) {
        // Question 4
        if yesUcsd.isOn {
            Journal.current?.collegeStudent = "yes, ucsd"
        }
       
        if yesColl.isOn {
            Journal.current?.collegeStudent = "yes, college"
        }
    
        
        if noColl.isOn {
            Journal.current?.collegeStudent = "no, college"
        }
      
        if prefStudent.isOn {
            Journal.current?.collegeStudent = "none"
        }
       
        // Question 5
        if freshYear.isOn {
            Journal.current?.currentlyEnrolled = "freshman"
        }
        
        if sophoYear.isOn {
             Journal.current?.currentlyEnrolled = "sophomore"
        }
       
        if juniorYear.isOn {
             Journal.current?.currentlyEnrolled = "junior"
        }
        
        if seniorYear.isOn {
             Journal.current?.currentlyEnrolled = "senior"
        }
        
        if superSeniorYear.isOn {
             Journal.current?.currentlyEnrolled = "super senior"
        }
       
        if noYear.isOn {
             Journal.current?.currentlyEnrolled = "not applicable"
        }
       
        if prefYear.isOn {
             Journal.current?.currentlyEnrolled = "none"
        }
        
    }
    
}
