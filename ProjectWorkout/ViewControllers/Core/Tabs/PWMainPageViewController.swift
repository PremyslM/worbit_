//
//  PWMainPageView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit

// TODO: - Create a ViewController from this UIView PWMAinPageView
/// This PWProgrammaticUIView class represents One of futere pages that will be loaded in ViewController to display them.
final class PWMainPageViewController: UIViewController {
    
    private lazy var infoContainer: PWPrimaryContainerView = {
        let _infoContainer = PWPrimaryContainerView()
        _infoContainer.layer.cornerRadius = 6
        _infoContainer.backgroundColor = .theme.primaryWhite
        return _infoContainer
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConfig()
        setConstraints()
    }
            
        
}


private extension PWMainPageViewController {
    
    func setConfig() {
        self.view.addConstrainedSubViews(infoContainer)
        
        self.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            tag: 1)
        
        self.title = "Home"
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            infoContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            infoContainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100),
            
            infoContainer.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9),
            infoContainer.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3),
        ])
    }
    
    
}
