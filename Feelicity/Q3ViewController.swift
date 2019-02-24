//
//  Q3ViewController.swift
//  Feelicity
//
//  Created by Sharan Singh on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q3ViewController: UIViewController {
    
    //Outlet for Question 1
    @IBOutlet weak var Q3TextBox: UITextView!
    
    //Outlet for Question 2
    @IBOutlet weak var Q3TextBox2: UITextView!
    
    @IBAction func Submit(_ sender: Any) {
        Journal.current?.stuckPoint1 = Q3TextBox.text
        Journal.current?.stuckPoint2 = Q3TextBox2.text
        Analytics.logEvent("land_on_Q4", parameters: ["land_on_Q4": true])
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //debugPrint("here is " + Q2TextBox.text)
        if(Journal.current?.stuckPoint1 == "" || Journal.current?.stuckPoint2 == ""){
            let alert = UIAlertController(title: "Fill in the blank", message: "Please fill in the blank before moving on", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            
            let next = storyboard.instantiateViewController(withIdentifier: "Q4")
            self.navigationController?.pushViewController(next, animated: true)
            
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Journal.current?.currentPage = 7
        //Done button for dismissing keyboard
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector (doneClicked))
        toolbar.setItems([flexibleSpace, doneButton], animated: false)
        Q3TextBox.inputAccessoryView = toolbar
        Q3TextBox2.inputAccessoryView = toolbar
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
        if(Journal.current?.stuckPoint1 != ""){
            Q3TextBox.text = Journal.current?.stuckPoint1
        }
        
        if(Journal.current?.stuckPoint2 != ""){
            Q3TextBox2.text = Journal.current?.stuckPoint2
        }
       
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
}
