//
//  File.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

import UIKit

protocol SplashScreenSceneRouter: BaseViewRouter {
    /// This method will be used to present the home page
    func showHome()
}

class SplashScreenSceneRouterImplementation: SplashScreenSceneRouter {
    private weak var controller: UIViewController?
    
    init(splashScreenViewController: UIViewController) {
        self.controller = splashScreenViewController
    }
    
    func showHome() {
        self.controller?.performSegue(withIdentifier: SegueIdentifiers.splashSceneToHome, sender: nil)
    }
}
