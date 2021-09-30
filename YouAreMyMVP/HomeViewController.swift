//
//  HomeViewController.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

import UIKit

class HomeViewController: UIViewController {

    let configurator: HomeSceneSconfigurator = HomeSceneSconfiguratorImplementation()
    var presenter: HomeScreenScenePresenter!
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.font = .boldSystemFont(ofSize: 16)
            label.textAlignment = .center
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configurator.configure(homeViewController: self)
        self.presenter.viewDidLoad()
    }


}

extension HomeViewController: HomeScreenView {
    func set(label: String) {
        self.label.text = label
    }
}

