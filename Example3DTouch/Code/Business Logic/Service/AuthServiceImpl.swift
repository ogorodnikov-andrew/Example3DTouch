//
//  AuthServiceImpl.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/6/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import Foundation

private let loggedInKey = "loggedInKey"

class AuthServiceImpl: AuthService {
    
    private let userDefaults = NSUserDefaults.standardUserDefaults()
    
    private let quickActionsService: QuickActionsService
    
    init(quickActionsService: QuickActionsService) {
        self.quickActionsService = quickActionsService
    }

    func login() {
        userDefaults.setBool(true, forKey: loggedInKey)
        quickActionsService.setQuickActions(isUserLoggedIn: true)
    }
    
    func logout() {
        userDefaults.setBool(false, forKey: loggedInKey)
        quickActionsService.setQuickActions(isUserLoggedIn: false)
    }
    
    func isLoggedIn() -> Bool {
        return userDefaults.boolForKey(loggedInKey)
    }
}
