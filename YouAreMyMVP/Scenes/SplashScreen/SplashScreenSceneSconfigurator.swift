//
//  SplashScreenSceneSconfigurator.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

protocol SplashScreenSceneSconfigurator {
    func configure(splashScreenViewController: SplashScreenViewController)
}

class SplashScreenSceneSconfiguratorImplementation: SplashScreenSceneSconfigurator {
    func configure(splashScreenViewController: SplashScreenViewController) {
        let appFlow = AppInitializerFlowImplementation()
        let router = SplashScreenSceneRouterImplementation.init(splashScreenViewController: splashScreenViewController)
        splashScreenViewController.presenter = SplashScreenScenePresenterImplementation.init(view: splashScreenViewController, appFlow: appFlow, router: router)
    }
}
