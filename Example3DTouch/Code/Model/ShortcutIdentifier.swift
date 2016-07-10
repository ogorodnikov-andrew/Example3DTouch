//
//  ShortcutIdentifier.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/7/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import Foundation

enum ShortcutIdentifier: String {
    case OpenMostViewed
    case OpenFavorites
    
    var tabbarIndex: Int {
        switch self {
        case .OpenMostViewed: return 0
        case .OpenFavorites: return 1
        }
    }
}