//
//  DetailScreenScenePresenter.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 04/10/2021.
//

protocol DetailScreenScenePresenter {
    var router: DetailScreenSceneRouter { get }
    func viewDidLoad()
}

class DetailScreenScenePresenterImplementation: DetailScreenScenePresenter {
    var view: DetailView?
    var router: DetailScreenSceneRouter
    
    init(view: DetailView, router: DetailScreenSceneRouter) {
        self.view = view
        self.router = router
    }
    
    func viewDidLoad() {
        
    }
}
