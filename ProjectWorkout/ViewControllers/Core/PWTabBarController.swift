//
//  PWTabViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit

/// This UINavigationController is the MAIN navigation controller in our app. Manages every viewControllers. Switchong between views, etc ...
final class PWTabBarController: UITabBarController {
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConfig()
        setUpTabBar()
        
    }
    
    
}

private extension PWTabBarController {
    
    func setConfig() {
        self.view.backgroundColor = .theme.primaryBackground // TODO: Just for testings
                            
    }
    
    func setUpTabBar() {
        self.tabBar.tintColor = .theme.secondaryWhite
        let menuVC = UINavigationController(rootViewController: PWMainPageViewController())
            
        self.viewControllers = [menuVC]
    }
    
    func setContraints() {
        
    }
    
    
}

