//
//  PWPrimaryContainerView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit


/// This PWProgrammaticUIView class represents UI Components that'll be located in many view, depents on his usage.
class PWPrimaryContainerView: PWProgrammaticUIView {        
    
    private var activity: Activity? {
        didSet {
            titleLabel.text = activity?.name
            statLabel.text = "Duration: \(activity!.percentageDurationString)\nDistance: \(activity!.distance)\nPower: \(activity!.power)" // TODO: Don't user multyString as a display data solution
        }
    }
    
    private lazy var mainStack: UIStackView = {
        let _mainStack = UIStackView()
    
        _mainStack.axis = .vertical
        _mainStack.spacing = 10
        
        return _mainStack
    }()
    
    private lazy var titleLabel: UILabel = {
        let _titleLabel = UILabel()
        
        _titleLabel.font = .systemFont(ofSize: 32, weight: .semibold)
        _titleLabel.textColor = .theme.secondaryWhite
        
        return _titleLabel
    }()
    
    private lazy var statLabel: UILabel = {
        let _statLabel = UILabel()
        
        _statLabel.numberOfLines = 0
        _statLabel.textColor = .theme.secondaryWhite
        _statLabel.font = .systemFont(ofSize: 20, weight: .medium)
        
        return _statLabel
    }()
    
    // MARK: - Public methods
    
    public func setActivity(activity: Activity) {
        self.activity = activity
    }
    
    
    // MARK: - Configuring UI
    
    override func setConfig() {
        self.addConstrainedSubViews(mainStack)
        mainStack.addArrangedSubview(titleLabel)
        mainStack.addArrangedSubview(statLabel)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            mainStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            mainStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            mainStack.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
        ])
    }
    
}
