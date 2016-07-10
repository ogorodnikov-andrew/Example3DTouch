//
//  MostViewedViewController.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/5/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import UIKit

class MostViewedViewController: ViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet var contentLabel: UILabel!
    
    // MARK: Localizable
    
    override func localize() {
        contentLabel.text = "LABEL.MOST_VIEWED".localized
        title = "TITLE.MOST_VIEWED".localized
    }
}
