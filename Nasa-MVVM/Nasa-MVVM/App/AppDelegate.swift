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
        
        let tabBarController = UITabBarController()
        
        let curiosityViewController = UIStoryboard(name: "PhotosView", bundle: Bundle.main).instantiateViewController(withIdentifier: "CuriosityViewController")
        let curiosityNavigationController: UINavigationController = UINavigationController(rootViewController: curiosityViewController)
        curiosityNavigationController.modalPresentationStyle = .overFullScreen
        
        let opportunityViewController = UIStoryboard(name: "PhotosView", bundle: Bundle.main).instantiateViewController(withIdentifier: "OpportunityViewController")
        let opportunityNavigationController: UINavigationController = UINavigationController(rootViewController: opportunityViewController)
        opportunityNavigationController.modalPresentationStyle = .overFullScreen
        
        let spiritViewController = UIStoryboard(name: "PhotosView", bundle: Bundle.main).instantiateViewController(withIdentifier: "SpiritViewController")
        let spiritNavigationController: UINavigationController = UINavigationController(rootViewController: spiritViewController)
        spiritNavigationController.modalPresentationStyle = .overFullScreen
        
        tabBarController.viewControllers = [curiosityNavigationController, opportunityNavigationController, spiritNavigationController]
        
        let item1 = UITabBarItem(title: "Curiosity", image: UIImage(named: "ico-home"), tag: 0)
        curiosityNavigationController.tabBarItem = item1
        
        let item2 = UITabBarItem(title: "Opportunity", image: UIImage(named: "ico-home"), tag: 0)
        opportunityNavigationController.tabBarItem = item2
        
        let item3 = UITabBarItem(title: "Spirit", image: UIImage(named: "ico-home"), tag: 0)
        spiritNavigationController.tabBarItem = item3
        
        self.window?.rootViewController = tabBarController
        
        return true
    }



}

