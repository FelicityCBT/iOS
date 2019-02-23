//
//  Q6ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q6ViewController: UIViewController {
    
    // Connected the buttons to the code
    @IBOutlet weak var lossOfEnergy: UISwitch!
    @IBOutlet weak var lossOfMotivation: UISwitch!
    @IBOutlet weak var increasedSighing: UISwitch!
    @IBOutlet weak var deeperBreaths: UISwitch!
    @IBOutlet weak var exhaustion: UISwitch!
    @IBOutlet weak var changeInAppetite: UISwitch!
    @IBOutlet weak var insomnia: UISwitch!
    @IBOutlet weak var listlessness: UISwitch!
    @IBOutlet weak var headaches: UISwitch!

    // Other Buttons linked with user input
    @IBOutlet weak var otherButton: UISwitch!
    @IBOutlet weak var otherInput: UITextView!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 10
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
    }
    
    @IBAction func submit(_ sender: Any) {
        if otherButton.isOn {
            Journal.current?.otherSymptoms = otherInput.text
        } else {
            Journal.current?.otherSymptoms = ""
        }
        
        if headaches.isOn {
            Journal.current?.headaches = true
        }
        else {
            Journal.current?.headaches = false
        }
        
        if listlessness.isOn {
            Journal.current?.listlessness = true
        }
        else {
            Journal.current?.listlessness = false
        }
        
        if insomnia.isOn {
            Journal.current?.insomnia = true
        }
        else {
            Journal.current?.insomnia = false
        }
        
        if changeInAppetite.isOn {
            Journal.current?.changeInAppetite = true
        }
        else {
            Journal.current?.changeInAppetite = false
        }
        
        if exhaustion.isOn {
            Journal.current?.exhaustion = true
        }
        else {
            Journal.current?.exhaustion = false
        }
        
        if deeperBreaths.isOn {
            Journal.current?.deeperBreaths = true
        }
        else {
            Journal.current?.deeperBreaths = false
        }
        
        if increasedSighing.isOn {
            Journal.current?.increasedSighing = true
        }
        else {
            Journal.current?.increasedSighing = false
        }
        
        if lossOfMotivation.isOn {
            Journal.current?.lossOfMotivation = true
        }
        else {
            Journal.current?.lossOfMotivation = false
        }
        
        if lossOfEnergy.isOn {
            Journal.current?.lossOfEnergy = true
        }
        else {
            Journal.current?.lossOfEnergy = false
        }
        Analytics.logEvent("land_on_Q7", parameters: ["land_on_Q7": true])
    
    }
    
    

}
