//
//  PhyAndGad1.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad1: UIViewController {
    
    /* Question 1 */
    @IBOutlet weak var notInterest: UISwitch!
    @IBOutlet weak var severalInterest: UISwitch!
    @IBOutlet weak var moreInterest: UISwitch!
    @IBOutlet weak var everyInterest: UISwitch!
    
    /* Question 2 */
    
    @IBOutlet weak var notFeelingDown: UISwitch!
    @IBOutlet weak var severalDown: UISwitch!
    @IBOutlet weak var moreDown: UISwitch!
    @IBOutlet weak var everyDown: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
