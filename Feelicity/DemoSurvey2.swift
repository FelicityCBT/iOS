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
        if yesTreatment.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if noTreatment.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if preferTreatment.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if haveReceivedTreatment.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if currentlyReceivingTreatment.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if neverReceivedTreatment.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if preferTreatment.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
    }
    
}
