//
//  Q9ViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class Q9ViewController: UIViewController {
    
    @IBOutlet weak var text1: UITextView!
    @IBOutlet weak var text2: UITextView!
    @IBOutlet weak var text3: UITextView!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 13
        //Done button for dismissing keyboard
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector (doneClicked))
        toolbar.setItems([flexibleSpace, doneButton], animated: false)
        text1.inputAccessoryView = toolbar
        text2.inputAccessoryView = toolbar
        text3.inputAccessoryView = toolbar
        
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
    @IBAction func addAnotherLine(_ sender: Any) {
        if let text1 = text1.text {
            // avoid text is not empty
            if (text1 != "") {
                Journal.current?.avoided.append(text1)
                self.text1.text = ""
            }
            else {
                let alert = UIAlertController(title: "Fill in the blank", message: "Please fill in the blank for 'avoided' before moving on", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            
        }
    }
    
    @IBAction func addAnotherLinePC(_ sender: Any) {
        if let text2 = text2.text, let text3 = text3.text {
            
            // pro or con text is not empty
            if(text2 != "" || text3 != "") {
                if(text2 != ""){
                    Journal.current?.pros.append(text2)
                    self.text2.text = ""
                }
                if(text3 != ""){
                    Journal.current?.cons.append(text2)
                    self.text3.text = ""
                }
            }
            else{
                let alert = UIAlertController(title: "Fill in the blank", message: "Please fill in the blank for at least one 'pro/con' before moving on", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func submit(_ sender: Any) {
        
       // Journal.current?.avoided = text1.text
    //    Journal.current?.prosCons = text2.text
        Analytics.logEvent("land_on_Q10", parameters: ["land_on_Q10": true])
        
    }
    
}
