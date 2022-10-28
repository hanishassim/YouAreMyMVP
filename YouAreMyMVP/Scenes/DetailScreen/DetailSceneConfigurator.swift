//
//  DetailSceneConfigurator.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 04/10/2021.
//

protocol DetailSceneConfigurator {
    func configure(detailViewController: DetailViewController)
}

class DetailSceneConfiguratorImplementation: DetailSceneConfigurator {
    func configure(detailViewController: DetailViewController) {
        let router = DetailScreenSceneRouterImplementation.init()
        
        detailViewController.presenter = DetailScreenScenePresenterImplementation.init(view: detailViewController, router: router)
    }
}
