//
//  WelcomeView.swift
//  Feelicity
//
//  Created by George Pu on 2/27/19.
//  Copyright © 2019 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class ConsentForm: UIViewController {
    
    @IBOutlet weak var consentForm: UITextView!
    override func viewDidLoad() {
        
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        // 5
        navigationItem.titleView = imageView
    }
}
