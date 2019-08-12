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
