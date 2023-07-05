//
//  PWUserProfileViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


final class PWUserProfileViewController: UIViewController {
    
    private let vc = PWUserProfileViewViewModel()
    
    private lazy var userView = PWUserProfileView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = vc.userManager.user?.name
        
        self.view.addConstrainedSubViews(userView)
        
        setupConstrains()
    }
    
    
}


extension PWUserProfileViewController {
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
            userView.topAnchor.constraint(equalTo: self.view.topAnchor),
            userView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            userView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            userView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        ])
    }
    
    
}
