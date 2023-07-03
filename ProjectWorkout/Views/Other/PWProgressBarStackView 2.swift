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
            mainStack.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
        ])
    }
    
    func setupActivityPorgressBar() {
        if vm.activites.count >= 3 {
            for activityIndex in 0..<3 {
                let _activityProgressBar = PWActivityProgressBar(vm.activites[activityIndex])
                            
                mainStack.addArrangedSubview(_activityProgressBar)
            }
        } else {
            for activity in vm.activites {
                let _activityProgressBar = PWActivityProgressBar(activity)
                            
                mainStack.addArrangedSubview(_activityProgressBar)
            }
        }
        
    }
    
    
}
