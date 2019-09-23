//
//  AppDelegate.swift
//  NavigationExample
//
//  Created by Pablo Blanco Peris on 19/09/2019.
//  Copyright © 2019 Pablo Blanco Peris. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    static var appCoordinator : AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initAppCoordinator()
        return true
    }
    
    func initAppCoordinator(){
        let navigationController = UINavigationController()
        navigationController.view.backgroundColor = UIColor.white
        window?.rootViewController = navigationController
        AppDelegate.appCoordinator = AppCoordinator(navigationController)
        AppDelegate.appCoordinator?.start()
        window?.makeKeyAndVisible()
    }
}
