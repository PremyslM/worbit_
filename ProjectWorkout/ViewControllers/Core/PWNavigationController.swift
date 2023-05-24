//
//  PWTabViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit

/// This UINavigationController is the MAIN navigation controller in our app. Manages every viewControllers. Switchong between views, etc ...
final class PWNavigationController: UINavigationController {
        
    private lazy var mainView = PWMainPageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white // TODO: Just for testing
                
        
        self.view.addConstrainedSubViews(mainView)
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    
}
