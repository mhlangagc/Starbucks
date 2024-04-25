//
//  AppDelegate.swift
//  Starbucks
//
//  Created by Reuben Simphiwe Kuse on 2024/04/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let starbucksColors = StarbucksColors()

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.tintColor = starbucksColors.starbucksGreen
        window?.rootViewController = UINavigationController(rootViewController: HomeViewController())

        window?.rootViewController = TabBarController()

        return true
    }

}


