//
//  SplashScreenScenePresenter.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

import Foundation

protocol SplashScreenScenePresenter {
    /// A getter to provide router for navigations.
    var router: SplashScreenSceneRouter { get }
    /// This method is to be called from view once the view is loaded.
    func viewDidLoad()
    /// This method will trigger navigation to the home screen on button tap action
    func buttonTapped()
}

class SplashScreenScenePresenterImplementation: SplashScreenScenePresenter {
    
    fileprivate weak var view: SplashScreenView?
    fileprivate let appFlow: AppInitializerFlow
    let router: SplashScreenSceneRouter
    
    init(view: SplashScreenView, appFlow: AppInitializerFlow, router: SplashScreenSceneRouter) {
        self.view  = view
        self.appFlow = appFlow
        self.router = router
    }
    
    func viewDidLoad() {
        self.view?.set(label: "SplashScreen")
        self.view?.set(textAlignment: .center)
    }
    
    func buttonTapped() {
        self.router.showHome()
    }
}

fileprivate extension SplashScreenScenePresenterImplementation {
    /// To setup the main flow.
    func setupMainApplicationFlow() {
        self.appFlow.setupAppFlow(for: .splashScreen)
    }
}
