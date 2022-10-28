//
//  DetailViewController.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 04/10/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    let configurator: DetailSceneConfigurator = DetailSceneConfiguratorImplementation()
    var presenter: DetailScreenScenePresenter!
    
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurator.configure(detailViewController: self)
        self.presenter.viewDidLoad()
    }
}

extension DetailViewController: DetailView {
    func set(description: String) {
        label.text = description
    }
    
    func set(image: UIImage) {
        
    }
}
