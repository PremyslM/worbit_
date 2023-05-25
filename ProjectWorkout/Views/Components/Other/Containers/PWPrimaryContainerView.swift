//
//  PWPrimaryContainerView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit


/// This PWProgrammaticUIView class represents UI Components that'll be located in many view, depents on his usage.
class PWPrimaryContainerView: PWProgrammaticUIView {
    
    private lazy var mainStack: UIStackView = {
        let _mainStack = UIStackView()
        _mainStack.layer.cornerRadius = 8
        _mainStack.backgroundColor = UIColor.theme.primaryWhite
        return _mainStack
    }()
    
    
    override func setConfig() {
        self.addConstrainedSubViews(mainStack)
    }
    
    
}
