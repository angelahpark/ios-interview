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
    case Login  = "log_in"
}

class SnowPlow {
    
    static let sharedInstance = SnowPlow()
    
    func sendEvent(_ eventID: String, withPayload payload: [String: Any]) {
        SnowplowSDK.sharedInstance.dispatchEvent(eventID, withPayload: payload)
    }
    
    // convenience methods
    func login(payload: [String: Any]) {
        sendEvent(SnowPlowAnalyticsProperty.Login.rawValue, withPayload: payload)
    }
}
