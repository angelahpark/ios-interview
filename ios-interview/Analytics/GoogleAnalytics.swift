//
//  GoogleAnalytics.swift
//  ios-interview
//
//  Created by Apple on 12/2/16.
//  Copyright © 2016 Headspace. All rights reserved.
//

import Foundation

// Properties
// * simplifying event renaming process
enum GoogleAnalyticsProperty: String {
    case Login  = "login"
}

class GoogleAnalytics {
    
    static let sharedInstance = GoogleAnalytics()
    
    func sendEvent(_ identifier: String, forUser userID: String, withData data: [String : String]) {
        GoogleAnalyticsSDK.sharedInstance.sendEvent(identifier, forUser: userID, withData: data)
    }
    
    // convenience methods
    func login(userID: String, withData data: [String : String]) {
        sendEvent(GoogleAnalyticsProperty.Login.rawValue, forUser: userID, withData: data)
    }
}
