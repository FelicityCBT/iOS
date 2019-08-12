//
//  EndViewController.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit

class EndViewController: UIViewController {
    
    var ref: DatabaseReference!
    
    // No height constraint
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        Journal.current?.currentPage = 25
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        
        // 4
        let image = UIImage(named: "SunIcon")
        imageView.image = image
        
        // 5
        navigationItem.titleView = imageView
        ref = Database.database().reference()
    
        // Print problematic pattern of behavior
    //    var problematicPatterns = UILabel(frame: CGRect(x: 0, y: 50, width: 350, height: 300))
        //counter for number of lines needed in label
        label.textAlignment = NSTextAlignment.center
        var counter: Int = 0
        
        if Journal.current == nil {
            return
        }
        
        if (Journal.current?.blackAndWhiteThinking)! {
            label.text = "Black and White Thinking"
            counter+=1
        }
        if (Journal.current?.overgeneralizing)! {
            label.text = label.text! + "\nOvergeneralizing"
            counter+=1
        }
        if (Journal.current?.selectiveAbstraction)! {
            label.text = label.text! + "\nSelective Abstraction"
            counter+=1
        }
        if (Journal.current?.mindReading)! {
            label.text = label.text! + "\nMind Reading"
            counter+=1
        }
        if (Journal.current?.personalizing)! {
            label.text =  label.text! + "\nPersonalizing"
            counter+=1
        }
        if (Journal.current?.catastrophizing)! {
            label.text = label.text! + "\nCatastrophizing"
            counter+=1
        }
        if (Journal.current?.shouldStatements)! {
            label.text = label.text! + "\nShould Statements"
            counter+=1
        }
        if (Journal.current?.minimizing)! {
            label.text = label.text! + "\nMinimizing"
            counter+=1
        }
        if (Journal.current?.noneOfTheAbove)! {
            label.text = label.text! + "\nNone of the above"
            counter+=1
        }
        
    //    problematicPatterns.numberOfLines = counter

    //    self.view.addSubview(label)
        
        self.submitToFirebase()
    }
    
    @IBAction func done(_ sender: Any) {
        Analytics.logEvent("hit_DONE", parameters: ["hit_DONE": true])
    }
    
    
    func getStringFromDate(format:String) -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = format //If you dont want static "UTC" you can go for ZZZZ instead of 'UTC'Z.
        formatter.timeZone = TimeZone(abbreviation: "PST")
        return formatter.string(from: date)
    }
    
    func submitToFirebase () {
        // Thoughts Dictionary
        var thoughtsDictionary: [String:Any] = [:]
        for (index,thought) in (Journal.current?.thoughts)!.enumerated() {
            var thoughtDictionary: [String:String] = [:]
            thoughtDictionary["Thought"] = thought.thought
            thoughtDictionary["Effect"] = thought.effect
            thoughtsDictionary["Thought\(index + 1)"] = thoughtDictionary
        }
        
        // write to firebase
        if Auth.auth().currentUser == nil {
            return
        }
        else {
        let key = Auth.auth().currentUser!.uid
        let journal = ["User": key,
                       "Timestamp": getStringFromDate(format: "MMMM dd, yyyy 'at' hh:mm:ss a 'UTC'Z"),
                       "Date": getStringFromDate(format: "MMMM dd, yyyy"),
                       "DateAsSeconds": Date().timeIntervalSince1970,
                       "Situationdescription1": (Journal.current?.situationDescription1)! as Int,
                       "Demo Agreed:": (Journal.current?.userAcceptDemo)! as Bool,
                       "PhqAndGad Agreed:": (Journal.current?.userAcceptPhqAndGad)! as Bool,
                       "Demo Survey Starts Here": "" as String,
                       "gender": (Journal.current?.gender)! as String,
                       "age": (Journal.current?.age)! as Int,
                       "raceEthnicity": (Journal.current?.raceEthnicity)! as String,
                       "collegeStudent": (Journal.current?.collegeStudent)! as String,
                       "currentlyEnrolled": (Journal.current?.currentlyEnrolled)! as String,
                       "diagnosedBefore": (Journal.current?.diagnosedBefore)! as String,
                       "diagnosedAndTreatment": (Journal.current?.diagnosedAndTreatment)! as String,
                       "currentlyReceivingTreatment": (Journal.current?.currentlyReceivingTreatment)! as String,
                       "Phq and Gad Starts Here": "" as String,
                       "littleInterestThings": (Journal.current?.littleInterestThings)! as String,
                       "feelingDown": (Journal.current?.feelingDown)! as String,
                       "troubleFallingAsleep": (Journal.current?.troubleFallingAsleep)! as String,
                       "feelingTired": (Journal.current?.feelingTired)! as String,
                       "poorAppetite": (Journal.current?.poorAppetite)! as String,
                       "feelingBadAboutSelf": (Journal.current?.feelingBadAboutSelf)! as String,
                       "troubleConcentrating": (Journal.current?.troubleConcentrating)! as String,
                       "movingSlowly": (Journal.current?.movingSlowly)! as String,
                       "thoughtSuicidal": (Journal.current?.thoughtSuicidal)! as String,
                       "feelingOnEdge": (Journal.current?.feelingOnEdge)! as String,
                       "uncontrolledWorrying": (Journal.current?.uncontrolledWorrying)! as String,
                       "worryingAboutDiffStuff": (Journal.current?.worryingAboutDiffStuff)! as String,
                       "troubleRelaxing": (Journal.current?.troubleRelaxing)! as String,
                       "beingRestless": (Journal.current?.beingRestless)! as String,
                       "becomingEasilyAnnoyed": (Journal.current?.becomingEasilyAnnoyed)! as String,
                       "feelingAfraid": (Journal.current?.feelingAfraid)! as String,
                       "levelOfDifficulty": (Journal.current?.levelOfDifficulty)! as String,
                       "End of Surveys/Research Here": "" as String,
                       "PreLoved": (Journal.current?.preLoved)! as Bool,
                       "PreHappy": (Journal.current?.preHappy)! as Bool,
                       "PreNervous": (Journal.current?.preNervous)! as Bool,
                       "PreAngry": (Journal.current?.preAngry)! as Bool,
                       "PreTired": (Journal.current?.preTired)! as Bool,
                       "PreSad": (Journal.current?.preSad)! as Bool,
                       "PreOkay": (Journal.current?.preOkay)! as Bool,
                       "IsFeelingNegativeEmotionsYes": (Journal.current?.isFeelingNegativeEmotionsYes)! as Bool,
                       "IsFeelingNegativeEmotionsNo": (Journal.current?.isFeelingNegativeEmotionsNo)! as Bool,
                       "SituationDescription2": (Journal.current?.situationDescription2)! as String,
                       "ThoughtDescription1": (Journal.current?.thoughtDescription1)! as String,
                       "StuckPoint1": (Journal.current?.stuckPoint1)! as String,
                       "StuckPoint2": (Journal.current?.stuckPoint2)! as String,
                       "feelsAnger": (Journal.current?.feelsAnger)! as Bool,
                       "feelsHopelessness": (Journal.current?.feelsHopelessness)! as Bool,
                       "feelsEmptiness": (Journal.current?.feelsEmptiness)! as Bool,
                       "feelsWorthlessness": (Journal.current?.feelsWorthlessness)! as Bool,
                       "feelsGuilt": (Journal.current?.feelsGuilt)! as Bool,
                       "feelsFrustration": (Journal.current?.feelsFrustration)! as Bool,
                       "feelsShame": (Journal.current?.feelsShame)! as Bool,
                       "feelsIrritation": (Journal.current?.feelsIrritation)! as Bool,
                       "feelsLethargic": (Journal.current?.feelsLethargic)! as Bool,
                       "feelsVulnerable": (Journal.current?.feelsVulnerable)! as Bool,
                       "feelsSensitive": (Journal.current?.feelsSensitive)! as Bool,
                       "angerPercentage1": (Journal.current?.angerPercentage1)! as Int,
                       "hopelessnessPercentage2": (Journal.current?.hopelessnessPercentage2)! as Int,
                       "emptinessPercentage3": (Journal.current?.emptinessPercentage3)! as Int,
                       "worthlessnessPercentage4": (Journal.current?.worthlessnessPercentage4)! as Int,
                       "guiltPercentage5": (Journal.current?.guiltPercentage5)! as Int,
                       "frustrationPercentage6": (Journal.current?.frustrationPercentage6)! as Int,
                       "shamePercentage7": (Journal.current?.shamePercentage7)! as Int,
                       "irritationPercentage8": (Journal.current?.irritationPercentage8)! as Int,
                       "lethargicPercentage9": (Journal.current?.lethargicPercentage9)! as Int,
                       "vulnerablePercentage10": (Journal.current?.vulnerablePercentage10)! as Int,
                       "sensitivePercentage11": (Journal.current?.sensitivePercentage11)! as Int,
                       
                       // Added by George on 2/13/19
                        "lossOfEnergy":
                            (Journal.current?.lossOfEnergy)! as Bool,
                        "lossOfMotivation":
                            (Journal.current?.lossOfMotivation)! as Bool,
                        "increasedSighing":
                            (Journal.current?.increasedSighing)! as Bool,
                        "deeeperBreaths":
                            (Journal.current?.deeperBreaths)! as Bool,
                        "exhaustion":
                            (Journal.current?.exhaustion)! as Bool,
                        "changeInAppetite":
                            (Journal.current?.changeInAppetite)! as Bool,
                        "insomnia":
                            (Journal.current?.insomnia)! as Bool,
                        "listlessness":
                            (Journal.current?.listlessness)! as Bool,
                        "headaches":
                            (Journal.current?.headaches)! as Bool,
                        "otherSymptoms":
                            (Journal.current?.otherSymptoms)! as String,
                        
                        //Added by George on 2/13/19
                        "seekingSocialSupport":
                            (Journal.current?.seekingSocialSupport)! as Bool,
                        "reappraisingTheSituation":
                            (Journal.current?.reappraisingSituation)! as Bool,
                        "solvingTheProblem":
                            (Journal.current?.solvingProblem)! as Bool,
                        "acceptingTheSituation":
                            (Journal.current?.acceptingSituation)! as Bool,
                        "exercising":
                            (Journal.current?.exercising)! as Bool,
                        "eating":
                            (Journal.current?.eating)! as Bool,
                        "shopping":
                            (Journal.current?.shopping)! as Bool,
                        "substanceUse":
                            (Journal.current?.substanceUse)! as Bool,
                        "keepingBusy":
                            (Journal.current?.keepingBusy)! as Bool,
                        "otherCopingMechanisms":
                            (Journal.current?.otherMechanisms)! as String,
                       
                       "copingMech": (Journal.current?.copingMech)! as String,
                       "alternativeCoping": (Journal.current?.alternativeCoping)! as String,
                       "avoided": (Journal.current?.avoided)! as [String], //before just String
                       "pros": (Journal.current?.pros)! as [String],
                       "cons": (Journal.current?.cons)! as [String], //added cons since it seperated from pros
                       "thoughtsAndActions": thoughtsDictionary ,
                       "factual": (Journal.current?.factual)! as Bool,
                       "exaggeration": (Journal.current?.exaggeration)! as Bool,
                       "isExcludingInfoYes": (Journal.current?.isExcludingInfoYes)! as Bool,
                       "isExcludingInfoNo": (Journal.current?.isExcludingInfoNo)! as Bool,
                       "excludedInfo": (Journal.current?.excludedInfo)! as String,
                       "blackAndWhiteThinking": (Journal.current?.blackAndWhiteThinking)! as Bool,
                       "overgeneralizing": (Journal.current?.overgeneralizing)! as Bool,
                       "selectiveAbstraction": (Journal.current?.selectiveAbstraction)! as Bool,
                       "mindReading": (Journal.current?.mindReading)! as Bool,
                       "personalizing": (Journal.current?.personalizing)! as Bool,
                       "catastrophizing": (Journal.current?.catastrophizing)! as Bool,
                       "shouldStatements": (Journal.current?.shouldStatements)! as Bool,
                       "minimizing": (Journal.current?.minimizing)! as Bool,
                       "noneOfTheAbove": (Journal.current?.noneOfTheAbove)! as Bool,
                       "mostImpactfulThought": (Journal.current?.mostImpactfulThought)! as String,
                       "fact": (Journal.current?.fact)! as Bool,
                       "opinion": (Journal.current?.opinion)! as Bool,
                       "reshapeImage": (Journal.current?.reshapeImage)! as String,
                       "positives": (Journal.current?.positives)! as [String], //changed from String
                       "believePreviousThought": (Journal.current?.believePreviousThought)! as Int,
                       "alternativeView": (Journal.current?.alternativeView)! as String,
                       "alternativeBelief": (Journal.current?.alternativeBelief)! as Int,
                       "doneDifferently": (Journal.current?.doneDifferently)! as String,
                       "whatHelped": (Journal.current?.whatHelped)! as [String], // changed this and below
                       "whatDidnt": (Journal.current?.whatDidnt)! as [String],
                       "feelsAngerPost": (Journal.current?.feelsAngerPost)! as Bool,
                       "feelsHopelessnessPost": (Journal.current?.feelsHopelessnessPost)! as Bool,
                       "feelsEmptinessPost": (Journal.current?.feelsEmptinessPost)! as Bool,
                       "feelsWorthlessnessPost": (Journal.current?.feelsWorthlessnessPost)! as Bool,
                       "feelsGuiltPost": (Journal.current?.feelsGuiltPost)! as Bool,
                       "feelsFrustrationPost": (Journal.current?.feelsFrustrationPost)! as Bool,
                       "feelsShamePost": (Journal.current?.feelsShamePost)! as Bool,
                       "feelsIrritationPost": (Journal.current?.feelsIrritationPost)! as Bool,
                       "feelsLethargicPost": (Journal.current?.feelsLethargicPost)! as Bool,
                       "feelsVulnerablePost": (Journal.current?.feelsVulnerablePost)! as Bool,
                       "feelsSensitivePost": (Journal.current?.feelsSensitivePost)! as Bool,
                       "angerPercentageReview1": (Journal.current?.angerPercentageReview1)! as Int,
                       "hopelessnessPercentageReview2": (Journal.current?.hopelessnessPercentageReview2)! as Int,
                       "emptinessPercentageReview3": (Journal.current?.emptinessPercentageReview3)! as Int,
                       "worthlessnessPercentageReview4": (Journal.current?.worthlessnessPercentageReview4)! as Int,
                       "guiltPercentageReview5": (Journal.current?.guiltPercentageReview5)! as Int,
                       "frustrationPercentageReview6": (Journal.current?.frustrationPercentageReview6)! as Int,
                       "shamePercentageReview7": (Journal.current?.shamePercentageReview7)! as Int,
                       "irritationPercentageReview8": (Journal.current?.irritationPercentageReview8)! as Int,
                       "lethargicPercentageReview9": (Journal.current?.lethargicPercentageReview9)! as Int,
                       "vulnerablePercentageReview10": (Journal.current?.vulnerablePercentageReview10)! as Int,
                       "sensitivePercentageReview11": (Journal.current?.sensitivePercentageReview11)! as Int,
                       
                       
                       "PostLoved": (Journal.current?.postLoved)! as Bool,
                       "PostHappy": (Journal.current?.postHappy)! as Bool,
                       "PostNervous": (Journal.current?.postNervous)! as Bool,
                       "PostAngry": (Journal.current?.postAngry)! as Bool,
                       "PostTired": (Journal.current?.postTired)! as Bool,
                       "PostSad": (Journal.current?.postSad)! as Bool,
                       "PostOkay": (Journal.current?.postOkay)! as Bool] as [String : Any]
        
        let id = UUID().uuidString
        ref?.child("Journal").child(id).setValue(journal, withCompletionBlock: { (error, snapshot) in
            // Encrypt the journal data
            //var encryptedData = SecKeyCreateEncryptedData(publicKey, rsaEncryptionPKCS1, journal, &error)
            self.ref?.child("Users").child(key).child("Journal").child(journal["Date"] as! String).updateChildValues([id: journal["Timestamp"]])
            
        })
        }   // else clause
        
        // reset app
        Journal.current = nil
        UserDefaults.standard.set(nil, forKey: "currentJournal")
    }
    
}
