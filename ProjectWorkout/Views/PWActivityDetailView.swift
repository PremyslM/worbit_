//
//  PWActivityDetailView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.06.2023.
//

import UIKit

class PWActivityDetailView: PWProgrammaticUIView {
    var delegate: UIViewController?
    
    private lazy var activityContainer: PWPrimaryContainerView = {
        let _activityContainer = PWPrimaryContainerView()        
        
        _activityContainer.layer.cornerRadius = 16
        _activityContainer.backgroundColor = .theme.primaryBackground?.withAlphaComponent(0.5)
        
        return _activityContainer
    }()
    
    
    override func setConfig() {
        self.addConstrainedSubViews(activityContainer)
    }

    override func setConstraints() {
        
        NSLayoutConstraint.activate([
            activityContainer.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            activityContainer.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            activityContainer.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            activityContainer.heightAnchor.constraint(equalToConstant: 200),
        ])
         
    }
    
}
