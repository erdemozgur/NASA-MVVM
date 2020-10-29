//
//  AppDelegate.swift
//  Nasa-MVVM
//
//  Created by Erdem Özgür on 29.10.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch
        
        let rootController = UIStoryboard(name: "PhotosView", bundle: Bundle.main).instantiateViewController(withIdentifier: "PhotosViewController")
        self.window?.rootViewController = rootController
        
        return true
    }



}

