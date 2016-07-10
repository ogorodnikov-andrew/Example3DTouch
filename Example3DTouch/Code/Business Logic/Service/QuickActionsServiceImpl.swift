//
//  QuickActionsServiceImpl.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/7/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import UIKit

private let favoritesItemType = "OpenFavorites"

class QuickActionsServiceImpl: QuickActionsService {
    
    // MARK: QuickActionsService
    
    func setQuickActions(isUserLoggedIn loggedIn: Bool) {
        if loggedIn {
            addFavoritesQuickAction()
        } else {
            removeFavoritesQuickAction()
        }
    }
    
    // MARK: Private Helpers
    
    private func addFavoritesQuickAction() {
        var shortcutItems = UIApplication.sharedApplication().shortcutItems ?? []
        let favoritesItem = UIApplicationShortcutItem(
            type: favoritesItemType,
            localizedTitle: "QUICK_ACTION.FAVORITES".localized,
            localizedSubtitle: nil,
            icon: UIApplicationShortcutIcon(type: .Favorite),
            userInfo: nil
        )
        shortcutItems.append(favoritesItem)
        UIApplication.sharedApplication().shortcutItems = shortcutItems
    }
    
    private func removeFavoritesQuickAction() {
        var shortcutItems = UIApplication.sharedApplication().shortcutItems ?? []
        guard let favoritesIndex = shortcutItems.indexOf({ $0.type == favoritesItemType }) else { return }
        shortcutItems.removeAtIndex(favoritesIndex)
        UIApplication.sharedApplication().shortcutItems = shortcutItems
    }
}
