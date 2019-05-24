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
        
        if yesUcsd.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
        if yesColl.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
        if noColl.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if prefStudent.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if freshYear.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if sophoYear.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if juniorYear.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if seniorYear.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if superSeniorYear.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if noYear.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        if prefYear.isOn {
            Journal.current?.shopping = true
        }
        else {
            Journal.current?.shopping = false
        }
        
        
    }
    
}
