//
//  PWTabViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit

/// This UINavigationController is the MAIN navigation controller in our app. Manages every viewControllers. Switchong between views, etc ...
final class PWTabBarController: UITabBarController {
    
    override func loadView() {
        super.loadView()
        
        setUpTabBar()
    }
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConfig()
    }
    
    
}


private extension PWTabBarController {
    
    func setConfig() {
        self.view.backgroundColor = .theme.primaryBackground // TODO: Just for testings
                            
    }
    
    func setUpTabBar() {
        self.tabBar.tintColor = .theme.secondaryWhite
        self.tabBar.barTintColor = .green
        
        let menuVC = UINavigationController(rootViewController: PWMainPageViewController())
        let userProfileVC = UINavigationController(rootViewController: PWUserProfileViewController())
        let activitiesVC = UINavigationController(rootViewController: PWActivitiesListViewController())
        
        menuVC.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            tag: 1)
        
        userProfileVC.tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person"),
            tag: 2)
        
        activitiesVC.tabBarItem = UITabBarItem(
            title: "Activities",
            image: UIImage(systemName: Constants.activityStrings[Int.random(in: 0..<Constants.activityStrings.count)]),
            tag: 3)
            
 
        
        self.viewControllers = [menuVC, userProfileVC ,activitiesVC]
    }
    
    func setContraints() {
        
    }
    
    
}

