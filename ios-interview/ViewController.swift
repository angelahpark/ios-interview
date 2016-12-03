//
//  ViewController.swift
//  ios-interview
//
//  Copyright © 2016 Headspace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Variables
    // *leaving these vars here but best to move out of vc
    var userID = "HSUSER_234234"
    var sessionID = "HSSESSION_123111"
    
    // MARK: Actions

    @IBAction func login(_ sender: UIButton) {
        // Send login event to Google Analytics and Snowplow.
        AnalyticsTracker.sharedInstance.trackLogin(userID: userID, data: ["buttonColor": "blue"])
    }

    @IBAction func completeMeditation(_ sender: UIButton) {
        // Send meditation completion event to Snowplow
        AnalyticsTracker.sharedInstance.trackMeditationComplete(userID: userID, sessionID: sessionID)
    }
}
