//
//  HomeSceneSconfigurator.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

protocol HomeSceneSconfigurator {
    func configure(homeViewController: HomeViewController)
}

class HomeSceneSconfiguratorImplementation: HomeSceneSconfigurator {
    func configure(homeViewController: HomeViewController) {
        let router = HomeScreenSceneRouterImplementation.init(controller: homeViewController)
        
        homeViewController.presenter = HomeScreenScenePresenterImplementation.init(view: homeViewController, router: router)
    }
}
