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


extension PWTabBarController {
    
    private func setConfig() {
        self.view.backgroundColor = .theme.primaryBackground // TODO: Just for testings
        
    }
    
    private func setUpTabBar() {
        self.tabBar.tintColor = .theme.secondaryWhite    
        
        let menuVC = UINavigationController(rootViewController: PWMainPageViewController())
        let userProfileVC = UINavigationController(rootViewController: PWUserProfileViewController())
        let exercisesVC = UINavigationController(rootViewController: PWExercisesViewController())
        let trainingVC = UINavigationController(rootViewController: PWTrainingViewController())
        
        self.tabBar.addNewItem(
            menuVC,
            title: "Home",
            image: UIImage(systemName: "house.fill")!,
            tag: 1)
        
        self.tabBar.addNewItem(
            userProfileVC,
            title: "Profile",
            image: UIImage(systemName: "person.fill")!,
            tag: 2)
        
        self.tabBar.addNewItem(
            exercisesVC,
            title: "Exercises",
            image: UIImage(systemName: "dumbbell.fill")!,
            tag: 3)
        
        self.tabBar.addNewItem(
            trainingVC,
            title: "Training",
            image: UIImage(systemName: "figure.run.square.stack.fill")!,
            tag: 4)
        
        self.viewControllers = [menuVC, trainingVC, exercisesVC ,userProfileVC]
    }
    
    
}

