//
//  BaseViewRouter.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 30/09/2021.
//

import UIKit

protocol BaseViewRouter {
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

extension BaseViewRouter {
    func prepare(for segue: UIStoryboardSegue, sender: Any?) { }
}
