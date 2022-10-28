//
//  ReportViewController.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 06/10/2021.
//

import UIKit

class ReportViewController: UIViewController {
    
    var presenter: ReportScenePresenter!
    var configurator: ReportSceneConfigurator = ReportSceneConfiguratorImplementation.init()
    
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurator.configure(reportViewController: self)
    }
}

extension ReportViewController: ReportView {
    func set(title: String) {
        self.label.text = title
    }
    
    func set(description: String) {
    }
}
