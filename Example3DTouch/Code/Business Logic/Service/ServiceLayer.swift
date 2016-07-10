//
//  ServiceLayer.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/6/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import Foundation

class ServiceLayer {
    
    static let serviceLayer = ServiceLayer()
    
    let authService: AuthService
    let quickActionsService: QuickActionsService
    
    private init() {
        quickActionsService = QuickActionsServiceImpl()
        authService = AuthServiceImpl(quickActionsService: quickActionsService)
    }
}
