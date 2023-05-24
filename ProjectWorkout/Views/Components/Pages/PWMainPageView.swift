//
//  PWMainPageView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit

// TODO: - Create a ViewController from this UIView PWMAinPageView
/// This PWProgrammaticUIView class represents One of futere pages that will be loaded in ViewController to display them.
final class PWMainPageView: PWProgrammaticUIView {
    
    private lazy var infoContainer: PWPrimaryContainerView = {
        let _infoContainer = PWPrimaryContainerView()
        _infoContainer.translatesAutoresizingMaskIntoConstraints = false
        _infoContainer.backgroundColor = .secondarySystemBackground
        
        return _infoContainer
    }()
    
    
    override func setConfig() {
        self.addConstrainedSubViews(infoContainer)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            infoContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            infoContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            infoContainer.widthAnchor.constraint(equalToConstant: 100),
            infoContainer.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
}
