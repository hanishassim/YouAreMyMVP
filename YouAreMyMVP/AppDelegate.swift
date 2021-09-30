//
//  AppDelegate.swift
//  YouAreMyMVP
//
//  Created by Hassim, Muhammad Hanis on 29/09/2021.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Setup app initial flow
        let appFlow = AppInitializerFlowImplementation.init()
        appFlow.setupAppFlow(for: .launchScreen)
        
        return true
    }
}

