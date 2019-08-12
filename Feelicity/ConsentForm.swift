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
        
        super.viewDidLoad()
        alertUser(message: "If you are experiencing any mental health issues or feel you may be in need of clinical assistance, please contact the Counseling and Psychological Services (CAPS) Clinic at 858-534-3755 for a confidential evaluation. CAPS is free for UCSD students who have paid the Student Services Fee for the quarter, including for those without insurance. Crisis and emergency counseling is available for UCSD students 24 hours a day, 7 days a week. Trained counselors are also available 24-hours a day, 7-days a week through the San Diego County Access and Crisis Line at 1-888-724-7240 to provide free support for suicide prevention, as well as information about available mental health services, including for those without insurance. If you are having thoughts of suicide, please call the National Suicide Prevention Lifeline at 1-800-273-8255. If at any time you believe you are having a medical or psychiatric emergency, please dial 911.")
    }
    
    func alertUser(message: String) {
        let alert = UIAlertController(title: "Missing Fields", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
}
