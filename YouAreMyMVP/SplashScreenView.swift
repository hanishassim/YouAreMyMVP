//
//  SplashScreenView.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 30/09/2021.
//

import UIKit

protocol SplashScreenView: class {
    /// Sets the screen label
    func set(label: String)
    /// Sets the screen label alignment
    func set(textAlignment: NSTextAlignment)
}
