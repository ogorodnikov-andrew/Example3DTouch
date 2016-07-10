//
//  ViewController.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/5/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let serviceLayer = ServiceLayer.serviceLayer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localize()
    }
}

extension ViewController: Localizable {
    func localize() { }
}
