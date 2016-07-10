//
//  FavoritesViewController.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/5/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import UIKit

class FavoritesViewController: ViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet var contentLabel: UILabel!
    
    @IBOutlet var loginButton: UIButton!
    
    // MARK: IBActions
    
    @IBAction func loginAction(sender: AnyObject) { login() }
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateFields()
    }
    
    // MARK: Localizable
    
    override func localize() {
        title = "TITLE.FAVORITES".localized
    }
    
    // MARK: Private Helpers
    
    private func login() {
        let loggedIn = serviceLayer.authService.isLoggedIn()
        if loggedIn {
            serviceLayer.authService.logout()
        } else {
            serviceLayer.authService.login()
        }
        updateFields()
    }
    
    private func updateFields() {
        let loggedIn = serviceLayer.authService.isLoggedIn()
        contentLabel.text = loggedIn ? "LABEL.FAVORITES".localized : "LABEL.LOGIN".localized
        let buttonTitle = loggedIn ? "ACTION.LOGOUT".localized : "ACTION.LOGIN".localized
        loginButton.setTitle(buttonTitle, forState: .Normal)
    }
}
