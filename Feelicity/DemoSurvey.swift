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
    
    /* Quesstion number 3 for button tracking and indexing */
    @IBOutlet weak var whiteRace: UISwitch!
    @IBOutlet weak var hispanicRace: UISwitch!
    @IBOutlet weak var africanAmericanRace: UISwitch!
    @IBOutlet weak var nativeAmericanRace: UISwitch!
    @IBOutlet weak var AsianRace: UISwitch!
    @IBOutlet weak var otherRace: UISwitch!
    @IBOutlet weak var prefRace: UISwitch!
    
    
    override func viewDidLoad() {
        
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
    }
    
    @IBAction func next(_ sender: Any) {
        if femaleGender.isOn {
            Journal.current?.otherMechanisms = ""
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if maleGender.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if otherGender.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if prefGender.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if ageVal.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if prefAge.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if whiteRace.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if hispanicRace.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if africanAmericanRace.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if nativeAmericanRace.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if AsianRace.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if otherRace.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if prefRace.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
    }
    
}
