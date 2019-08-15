//
//  WelView.swift
//  Feelicity
//
//  Created by George Pu on 3/8/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class WelView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func clickLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.felicitycbt.com/contactus")! as URL, options:
            [:], completionHandler: nil)
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        print("hi")
    }
    
}
