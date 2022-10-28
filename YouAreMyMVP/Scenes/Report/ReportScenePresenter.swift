//
//  ReportScenePresenter.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 06/10/2021.
//

protocol ReportScenePresenter {
    var router: ReportSceneRouter { get }
    func viewDidLoad()
}

class ReportScenePresenterImplementation: ReportScenePresenter {
    
    fileprivate weak var view: ReportView?
    let router: ReportSceneRouter
    
    init(view: ReportView, router: ReportSceneRouter) {
        self.view = view
        self.router = router
    }
    
    func viewDidLoad() {
        self.view?.set(title: "Create a Report")
        self.view?.set(description: ".")
    }
}
