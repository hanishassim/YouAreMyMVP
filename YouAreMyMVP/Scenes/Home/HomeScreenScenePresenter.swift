//
//  HomeScreenScenePresenter.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 30/09/2021.
//

import Foundation

protocol HomeScreenScenePresenter {
    /// A getter to provide router for navigations.
    var router: HomeScreenSceneRouter { get }
    /// This method is to be called from view once the view is loaded.
    func viewDidLoad()
}

class HomeScreenScenePresenterImplementation: HomeScreenScenePresenter {
    
    fileprivate weak var view: HomeScreenView?
    let router: HomeScreenSceneRouter
    
    init(view: HomeScreenView, router: HomeScreenSceneRouter) {
        self.view  = view
        self.router = router
    }
    
    func viewDidLoad() {
        self.view?.set(label: "Home")
    }
}

fileprivate extension HomeScreenScenePresenterImplementation {
}
