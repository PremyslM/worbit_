//
//  PWProgressBarStackView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 11.06.2023.
//

import UIKit


class PWProgressBarStackView: PWProgrammaticUIView {
    
    private let vm: PWProgressBarStackViewModel = PWProgressBarStackViewModel()
    
    
    private lazy var mainStack: UIStackView = {
        let _mainStack = UIStackView()
        _mainStack.axis = .vertical
        _mainStack.distribution = .fillEqually
        
        return _mainStack
    }()
    
    override func setConfig() {
        self.addConstrainedSubViews(mainStack)
        setupActivityPorgressBar()
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: self.topAnchor),
            mainStack.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainStack.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainStack.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    
    func setupActivityPorgressBar() {
        
        for activity in vm.activites {
            let _activityProgressBar = PWActivityProgressBar(activity)
                        
            mainStack.addArrangedSubview(_activityProgressBar)
            
            // Configuring constraints that every progress bar will be under the other one
            NSLayoutConstraint.activate([
                /*_activityProgressBar.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: CGFloat(consTop)),
                _activityProgressBar.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                _activityProgressBar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                _activityProgressBar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),*/
            ])
        }
        
    }
    
}
