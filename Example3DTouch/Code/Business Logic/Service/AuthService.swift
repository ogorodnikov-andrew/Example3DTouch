//
//  AuthService.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/6/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import Foundation

protocol AuthService {
    func login()
    func logout()
    func isLoggedIn() -> Bool
}
