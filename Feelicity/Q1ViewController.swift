//
//  Q1ViewController.swift
//  Feelicity
//
//  Created by Sharan Singh on 8/17/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseDatabase

class  Q1ViewController: UIViewController {
    
    //Outlets for Question 1 go here
    @IBOutlet weak var YesSwitch: UISwitch!
    @IBOutlet weak var NoSwitch: UISwitch!
    @IBOutlet weak var TextPrompt: UILabel!
    
    //Question 2 on Q1 page
    @IBOutlet weak var Q1TextBox: UITextView!
    
    @IBAction func submit(_ sender: Any){
        Journal.current?.isFeelingNegativeEmotionsYes =
            YesSwitch.isOn ?
            true: false
        Journal.current?.isFeelingNegativeEmotionsNo =
            NoSwitch.isOn ?
            true: false
        Journal.current?.situationDescription2 = Q1TextBox.text
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //debugPrint("here is " + Q2TextBox.text)
        if(Journal.current?.isFeelingNegativeEmotionsYes == false && Journal.current?.isFeelingNegativeEmotionsNo == false){
            let alert = UIAlertController(title: "Make a selection", message: "Please select \"yes\" or \"no\" before moving on", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        if(Journal.current?.isFeelingNegativeEmotionsYes == true && Journal.current?.situationDescription2 == ""){
            let alert = UIAlertController(title: "Fill in the blank", message: "Please fill in the blank before moving on", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if((Journal.current?.isFeelingNegativeEmotionsYes == true && Journal.current?.situationDescription2 != "") || Journal.current?.isFeelingNegativeEmotionsNo == true){
            
            let next = storyboard.instantiateViewController(withIdentifier: "Q2")
            self.navigationController?.pushViewController(next, animated: true)
            
        }
        Analytics.logEvent("land_on_Q2", parameters: ["land_on_Q2": true])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Done button for dismissing keyboard
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector (doneClicked))
        toolbar.setItems([flexibleSpace, doneButton], animated: false)
        Q1TextBox.inputAccessoryView = toolbar
        
        Journal.current?.currentPage = 5
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
        if (Journal.current?.isFeelingNegativeEmotionsYes == false){
            TextPrompt.isHidden = true;
            Q1TextBox.isHidden = true;
            if(Journal.current?.isFeelingNegativeEmotionsNo == true){
                NoSwitch.isOn = true;
            }
        }else{
            
            TextPrompt.isHidden = false;
            Q1TextBox.isHidden = false;
            YesSwitch.isOn = true;
            Q1TextBox.text = Journal.current?.situationDescription2
        }

    }
    
    @IBAction func yesButtonToggle(_ sender: Any) {
        if YesSwitch.isOn{
            TextPrompt.isHidden = false
            Q1TextBox.isHidden = false
        }else{
            TextPrompt.isHidden = true;
            Q1TextBox.isHidden = true;
        }
    }
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
}
