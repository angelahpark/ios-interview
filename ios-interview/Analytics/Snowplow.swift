//
//  Snowplow.swift
//  ios-interview
//
//  Created by Apple on 12/2/16.
//  Copyright © 2016 Headspace. All rights reserved.
//

import Foundation

// Properties
// * simplifying event renaming process
enum SnowPlowAnalyticsProperty: String {
    case Login              = "log_in"
    case CompleteMeditation = "complete_meditation"
}

class SnowPlow {
    
    static let sharedInstance = SnowPlow()
    
    func sendEvent(_ eventID: String, withPayload payload: [String : Any]) {
        SnowplowSDK.sharedInstance.dispatchEvent(eventID, withPayload: payload)
    }
    
    // convenience methods
    func login(userID: String) {
        sendEvent(SnowPlowAnalyticsProperty.Login.rawValue, withPayload: [
            "userID": userID
        ])
    }
    
    func meditationComplete(userID: String, sessionID: String) {
        sendEvent(SnowPlowAnalyticsProperty.CompleteMeditation.rawValue, withPayload: [
            "userID": userID,
            "sessionID": sessionID
        ])
    }
}
