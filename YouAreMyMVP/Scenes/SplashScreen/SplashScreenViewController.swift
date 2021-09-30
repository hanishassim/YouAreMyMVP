//
//  SpashScreenViewController.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    let configurator: SplashScreenSceneSconfigurator = SplashScreenSceneSconfiguratorImplementation()
    var presenter: SplashScreenScenePresenter!
    
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.font = .boldSystemFont(ofSize: 16)
        }
    }
    
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.backgroundColor = .gray
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configurator.configure(splashScreenViewController: self)
        self.presenter.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    @objc func buttonTapped() {
        self.presenter.buttonTapped()
    }
}

extension SplashScreenViewController: SplashScreenView {
    func set(textAlignment: NSTextAlignment) {
        self.label.textAlignment = textAlignment
    }
    
    func set(label: String) {
        self.label.text = label
    }
}
