//
//  HomeScreenSceneRouter.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 30/09/2021.
//

import UIKit

protocol HomeScreenSceneRouter: BaseViewRouter {
    
}

class HomeScreenSceneRouterImplementation: HomeScreenSceneRouter {
    private weak var controller: UIViewController?
    
    init(controller: UIViewController) {
        self.controller = controller
    }
}
