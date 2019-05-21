//
//  Q8ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q8ViewController: UIViewController {
    
    // Outlets for the buttons
    @IBOutlet weak var seekingSocialSupport: UISwitch!
    @IBOutlet weak var reappraisingSituation: UISwitch!
    @IBOutlet weak var solvingProblem: UISwitch!
    @IBOutlet weak var acceptingSituation: UISwitch!
    @IBOutlet weak var exercising: UISwitch!
    @IBOutlet weak var eating: UISwitch!
    @IBOutlet weak var shopping: UISwitch!
    @IBOutlet weak var substanceUse: UISwitch!
    @IBOutlet weak var drinkingAlcohol: UISwitch!
    @IBOutlet weak var smoking: UISwitch!
    @IBOutlet weak var consumingDrugs: UISwitch!
    @IBOutlet weak var keepingBusy: UISwitch!
    
    // Outlet for the user input option
    @IBOutlet weak var otherB: UISwitch!
    @IBOutlet weak var otherText: UITextView!
    
    
    
    @IBOutlet weak var text1: UITextView!
    @IBOutlet weak var text2: UITextView!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 12
        //Done button for dismissing keyboard
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector (doneClicked))
        toolbar.setItems([flexibleSpace, doneButton], animated: false)
        otherText.inputAccessoryView = toolbar
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
        if otherB.isOn {
            Journal.current?.otherMechanisms = otherText.text
        } else {
            Journal.current?.otherMechanisms = ""
        }
        
        if seekingSocialSupport.isOn {
            Journal.current?.seekingSocialSupport = true
        }
        else {
            Journal.current?.seekingSocialSupport = false
        }
        
        if reappraisingSituation.isOn {
            Journal.current?.reappraisingSituation = true
        }
        else {
            Journal.current?.reappraisingSituation = false
        }
        
        if solvingProblem.isOn {
            Journal.current?.solvingProblem = true
        }
        else {
            Journal.current?.solvingProblem = false
        }
        
        if acceptingSituation.isOn {
            Journal.current?.acceptingSituation = true
        }
        else {
            Journal.current?.acceptingSituation = false
        }
        
        if exercising.isOn {
            Journal.current?.exercising = true
        }
        else {
            Journal.current?.exercising = false
        }
        
        if eating.isOn {
            Journal.current?.eating = true
        }
        else {
            Journal.current?.eating = false
        }
        
        if shopping.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
        if substanceUse.isOn {
            Journal.current?.substanceUse = true
        }
        else {
            Journal.current?.substanceUse = false
        }
        
        if drinkingAlcohol.isOn {
            Journal.current?.drinkingAlcohol = true
        }
        else {
            Journal.current?.drinkingAlcohol = false
        }
        
        if smoking.isOn {
            Journal.current?.smoking = true
        }
        else {
            Journal.current?.smoking = false
        }
        
        if consumingDrugs.isOn {
            Journal.current?.consumingDrugs = true
        }
        else {
            Journal.current?.consumingDrugs = false
        }
        if keepingBusy.isOn {
            Journal.current?.keepingBusy = true
        }
        else {
            Journal.current?.keepingBusy = false
        }
        
        Analytics.logEvent("land_on_Q9", parameters: ["land_on_Q9": true])
    }
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
  

}
