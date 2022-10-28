//
//  ReportSceneRouter.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 06/10/2021.
//

import UIKit

protocol ReportSceneRouter: BaseViewRouter {
    
}

class ReportSceneRouterImplementation: ReportSceneRouter {
    private weak var controller: UIViewController?
    
    init(controller: UIViewController) {
        self.controller = controller
    }
}
