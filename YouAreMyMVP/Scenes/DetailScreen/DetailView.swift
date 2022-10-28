//
//  DetailView.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 04/10/2021.
//

import UIKit

protocol DetailView: AnyObject {
    /// Sets the screen description label
    func set(description: String)
    /// Sets the screen thumbanil image
    func set(image: UIImage)
}
