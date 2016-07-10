//
//  String+Localization.swift
//  Example3DTouch
//
//  Created by Андрей Огородников on 7/5/16.
//  Copyright © 2016 Ogorodnikov Andrei. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
