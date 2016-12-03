//
//  AnalyticsTracker.swift
//  ios-interview
//
//  Created by Apple on 12/2/16.
//  Copyright © 2016 Headspace. All rights reserved.
//

import Foundation

class AnalyticsTracker: NSObject {
    
    static let sharedInstance = AnalyticsTracker()
    
    func trackLogin(userID: String, data: [String : Any]) {
        if let data = data as? [String : String] {
            GoogleAnalytics.sharedInstance.login(userID: userID, withData: data)
        }
        SnowPlow.sharedInstance.login(userID: userID)
    }
    
    func trackMeditationComplete(userID: String, sessionID: String) {
        SnowPlow.sharedInstance.meditationComplete(userID: userID, sessionID: sessionID)
    }
}
