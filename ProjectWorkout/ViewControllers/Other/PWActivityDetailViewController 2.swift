//
//  PWActivityDetailViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.06.2023.
//

import UIKit

final class PWActivityDetailViewController: UIViewController {
    
    private lazy var activityContainer: PWPrimaryContainerView = {
        let _activityContainer = PWPrimaryContainerView()
        
        return _activityContainer
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConstraints()                
    }
    
    
    func setConstraints() {
        self.view.addSubview(activityContainer)
        
        NSLayoutConstraint.activate([
            activityContainer.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            activityContainer.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            activityContainer.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
    }
    
    
}
