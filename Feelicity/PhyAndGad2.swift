//
//  PhyAndGad2.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class PhyAndGad2: UIViewController {
    /* Questino 3 */
    @IBOutlet weak var notAsleep: UISwitch!
    @IBOutlet weak var severalAsleep: UISwitch!
    @IBOutlet weak var moreAsleep: UISwitch!
    
    @IBOutlet weak var everyAsleep: UISwitch!
    
    /* Question 4 */
    @IBOutlet weak var notTired: UISwitch!
    @IBOutlet weak var severalTired: UISwitch!
    @IBOutlet weak var moreTired: UISwitch!
    @IBOutlet weak var everyTired: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
