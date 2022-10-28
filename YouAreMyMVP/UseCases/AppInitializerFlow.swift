//
//  AppInitializerFlow.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

import UIKit

/// This enum will be used to define the source for which the app needs to decide the flow.
enum AppFlowSource {
    case launchScreen
    case splashScreen
}

protocol AppInitializerFlow {
    /**
     This method will be used to setup the app initial flow based on the source.
     - Parameter source: Source for which flow needs to be setup.
     */
    func setupAppFlow(for source: AppFlowSource)
}

class AppInitializerFlowImplementation: AppInitializerFlow {

    private (set) var storyboardID = StoryboardIdentifiers.home

    func setupAppFlow(for source: AppFlowSource) {
        switch source {
        case .launchScreen:
            self.storyboardID = StoryboardIdentifiers.splashScreen

        case .splashScreen:
            self.storyboardID = StoryboardIdentifiers.home
        }

        guard let _appDelegate = UIApplication.shared.delegate as? AppDelegate,
            let _window = _appDelegate.window else {
                assertionFailure("Couldn't setup app flow")
                return
        }

        _window.rootViewController = UIStoryboard(name: self.storyboardID, bundle: nil).instantiateInitialViewController()
        _window.makeKeyAndVisible()
    }
}
