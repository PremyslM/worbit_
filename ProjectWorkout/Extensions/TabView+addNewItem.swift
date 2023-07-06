//
//  TabView+addNewItem.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 27.05.2023.
//

import UIKit

extension UITabBar {
    
    /// Help method
    ///
    /// Add's new tabBar item much more easily
    public func addNewItem(_ rootViewController: UIViewController, title: String, image: UIImage, tag: Int) {
        rootViewController.tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
    }
    
    
}
