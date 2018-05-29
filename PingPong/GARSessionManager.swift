//
//  GARSessionManager.swift
//  PingPong
//
//  Created by Raman Singh on 2018-05-29.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

import UIKit
import ARCore

class GARSessionManager: NSObject {

    var gSession: GARSession?
    
    override init() {
        do {
            gSession = try GARSession.init(apiKey: "AIzaSyAR_-5q-d1RvZk7h1_n1GcIQWrKFXEIV-g", bundleIdentifier: nil)
        } catch {
            print("Couldn't initialize GAR session")
        }
        if let gSession = gSession {
            gSession.delegate = self
            gSession.delegateQueue = DispatchQueue.main
            enterState(state: .Default)
        }
    }
    
    
    
}//end
