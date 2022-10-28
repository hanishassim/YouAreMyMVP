//
//  ReportSceneConfigurator.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 06/10/2021.
//

protocol ReportSceneConfigurator {
    func configure(reportViewController: ReportViewController)
}

class ReportSceneConfiguratorImplementation: ReportSceneConfigurator {
    func configure(reportViewController: ReportViewController) {
        let router = ReportSceneRouterImplementation.init(controller: reportViewController)
        
        reportViewController.presenter = ReportScenePresenterImplementation.init(view: reportViewController, router: router)
    }
}
