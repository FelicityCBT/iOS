//
//  Journal.swift
//  Feelicity
//
//  Created by Sonal Prasad on 8/15/18.
//  Copyright © 2018 Feelicity. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class Journal: NSObject {
    
    static var current: Journal?
    
    var currentPage: Int = 0
    
    // database storage variables - empty space signifies the next frame
    var situationDescription1: Int = 50
    
    var preLoved: Bool = false
    var preHappy: Bool = false
    var preNervous: Bool = false
    var preAngry: Bool = false
    var preTired: Bool = false
    var preSad: Bool = false
    var preOkay: Bool = false
   // var preEmoji: String? = ""
    
    var isFeelingNegativeEmotionsYes: Bool = false
    var isFeelingNegativeEmotionsNo: Bool = false
    var situationDescription2: String? = ""
    
    var thoughtDescription1: String? = ""
    
    var stuckPoint1: String? = ""
    var stuckPoint2: String? = ""
    
    var feelsAnger: Bool = false
    var feelsHopelessness: Bool = false
    var feelsEmptiness: Bool = false
    var feelsWorthlessness: Bool = false
    var feelsGuilt: Bool = false
    var feelsFrustration: Bool = false
    var feelsShame: Bool = false
    var feelsIrritation: Bool = false
    var feelsLethargic: Bool = false
    var feelsVulnerable: Bool = false
    var feelsSensitive: Bool = false
    var feelsPanic: Bool = false
    var feelsFear: Bool = false
    var feelsNervousness: Bool = false
    
    var angerPercentage1: Int = 50
    var hopelessnessPercentage2: Int = 50
    var emptinessPercentage3: Int = 50
    var worthlessnessPercentage4: Int = 50
    var guiltPercentage5: Int = 50
    var frustrationPercentage6: Int = 50
    var shamePercentage7: Int = 50
    var irritationPercentage8: Int = 50
    var lethargicPercentage9: Int = 50
    var vulnerablePercentage10: Int = 50
    var sensitivePercentage11: Int = 50
    var panicPercentage11: Int = 50
    var fearPercentage12: Int = 50
    var nervousnessPercentage13: Int = 50
    
    // George Added values for Q6
    var lossOfEnergy: Bool = false
    var lossOfMotivation: Bool = false
    var increasedSighing: Bool = false
    var deeperBreaths: Bool = false
    var exhaustion: Bool = false
    var changeInAppetite: Bool = false
    var insomnia: Bool = false
    var listlessness: Bool = false
    var headaches: Bool = false
    var otherSymptoms: String? = ""
    
    // George Added values for Q8
    var seekingSocialSupport: Bool = false
    var reappraisingSituation: Bool = false
    var solvingProblem: Bool = false
    var acceptingSituation: Bool = false
    var exercising: Bool = false
    var eating: Bool = false
    var shopping: Bool = false
    var substanceUse: Bool = false
    
    // added things in place of substance abuse, not applied yet
    var drinkingAlcohol: Bool = false
    var smoking: Bool = false
    var consumingDrugs: Bool = false
    var keepingBusy: Bool = false
    var otherMechanisms: String? = ""
    
    // Values for the Demographic Survey
    var gender: String? = ""
    var age: Int? = 0
    var raceEthnicity: String? = ""
    var collegeStudent: String? = ""
    var currentlyEnrolled: String? = ""
    var diagnosedBefore: String? = ""
    var diagnosedAndTreatment: String? = ""
    var currentlyReceivingTreatment: String? = ""
    
    // Values for the PHQ and GAD Survey
    var littleInterestThings: String? = ""
    var feelingDown: String? = ""
    var troubleFallingAsleep: String? = ""
    var feelingTired: String? = ""
    var poorAppetite: String? = ""
    var feelingBadAboutSelf: String? = ""
    var troubleConcentrating: String? = ""
    var movingSlowly: String? = ""
    var thoughtSuicidal: String? = ""
    var feelingOnEdge: String? = ""
    var uncontrolledWorrying: String? = ""
    var worryingAboutDiffStuff: String? = ""
    var troubleRelaxing: String? = ""
    var beingRestless: String? = ""
    var becomingEasilyAnnoyed: String? = ""
    var feelingAfraid: String? = ""
    var levelOfDifficulty: String? = ""
    
    // Confirmation for Demo && Phq + Gad
    var userAcceptDemo: Bool? = true
    var userAcceptPhqAndGad: Bool? = true
    
    var behavior: String? = ""
    var behaviorInfluence: String? = ""
    var copingMech: String? = ""
    var alternativeCoping: String? = ""
    var avoided: [String] = []
    var pros: [String] = []
    var cons: [String] = []

    var thoughts: [Thought] = [Thought]()

    var factual: Bool = false
    var exaggeration: Bool = false
    
    var isExcludingInfoYes: Bool = false
    var isExcludingInfoNo: Bool = false
    var excludedInfo: String? = ""
    
    var blackAndWhiteThinking: Bool = false
    var overgeneralizing: Bool = false
    var selectiveAbstraction: Bool = false
    var mindReading: Bool = false
    var personalizing: Bool = false
    var catastrophizing: Bool = false
    var shouldStatements: Bool = false
    var minimizing: Bool = false
    var noneOfTheAbove: Bool = false
    
    var mostImpactfulThought: String? = ""
    var fact: Bool = false
    var opinion: Bool = false
    
    var reshapeImage: String? = ""
    var positives: [String] = []
    
    var believePreviousThought: Int = 50
    
    var alternativeView: String? = ""
    var alternativeBelief: Int = 50
    
    var doneDifferently: String? = ""
    var whatHelped: [String] = [] //kimbo changed these two
    var whatDidnt: [String] = []
    
    var feelsAngerPost: Bool = false
    var feelsHopelessnessPost: Bool = false
    var feelsEmptinessPost: Bool = false
    var feelsWorthlessnessPost: Bool = false
    var feelsGuiltPost: Bool = false
    var feelsFrustrationPost: Bool = false
    var feelsShamePost: Bool = false
    var feelsIrritationPost: Bool = false
    var feelsLethargicPost: Bool = false
    var feelsVulnerablePost: Bool = false
    var feelsSensitivePost: Bool = false
    var feelsPanicPost: Bool = false
    var feelsFearPost: Bool = false
    var feelsNervousnessPost: Bool = false
    
    var angerPercentageReview1: Int = 50
    var hopelessnessPercentageReview2: Int = 50
    var emptinessPercentageReview3: Int = 50
    var worthlessnessPercentageReview4: Int = 50
    var guiltPercentageReview5: Int = 50
    var frustrationPercentageReview6: Int = 50
    var shamePercentageReview7: Int = 50
    var irritationPercentageReview8: Int = 50
    var lethargicPercentageReview9: Int = 50
    var vulnerablePercentageReview10: Int = 50
    var sensitivePercentageReview11: Int = 50
    var panicPercentageReview11: Int = 50
    var fearPercentageReview12: Int = 50
    var nervousnessPercentageReview13: Int = 50
    
    var postLoved: Bool = false
    var postHappy: Bool = false
    var postNervous: Bool = false
    var postAngry: Bool = false
    var postTired: Bool = false
    var postSad: Bool = false
    var postOkay: Bool = false
//    var postEmoji: String? = ""
    
    static func setCurrentJournal() {
        let journal = Journal()
        Journal.current = journal
    }

}
