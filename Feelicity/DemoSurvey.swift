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
}
