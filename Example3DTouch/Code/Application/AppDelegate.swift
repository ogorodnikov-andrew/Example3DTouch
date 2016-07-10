//
//  AppDelegate.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/5/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // MARK: UIApplicationDelegate

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        if let shortcutItem = launchOptions?[UIApplicationLaunchOptionsShortcutItemKey] as? UIApplicationShortcutItem {
            handleShortcut(shortcutItem)
            return false
        }
        return true
    }

    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        completionHandler(handleShortcut(shortcutItem))
    }
    
    // MARK: Private Helpers
    
    private func handleShortcut(shortcutItem: UIApplicationShortcutItem) -> Bool {
        let shortcutType = shortcutItem.type
        guard let shortcutIdentifier = ShortcutIdentifier(rawValue: shortcutType) else {
            return false
        }
        return selectTabBarItemForIdentifier(shortcutIdentifier)
    }
    
    private func selectTabBarItemForIdentifier(shortcutIdentifier: ShortcutIdentifier) -> Bool {
        guard let tabBarController = window?.rootViewController as? UITabBarController else { return false }
        tabBarController.selectedIndex = shortcutIdentifier.tabbarIndex
        return true
    }
}

