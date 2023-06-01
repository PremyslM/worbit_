//
//  PWActivityStatsView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit

class PWActivityStatsView: PWProgrammaticUIView {
    
    private let vc = PWActivityStatsViewViewModel()

    private lazy var statStackView: UIStackView = {
        let _statStackView = UIStackView()
        _statStackView.axis = .horizontal        
        _statStackView.distribution = .equalSpacing
        
        return _statStackView
    }()
    
    
    // MARK: - Configuring UI
        
    override func setConfig() {
        self.addConstrainedSubViews(statStackView)
        
        for activity in vc.activityManager.unwrappedActivities {
            let statItemView = PWActivityStatItemView()
            
            statItemView.statLabel.text = activity.name            
            
            self.statStackView.addArrangedSubview(statItemView)
        }
        
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([    
            //statStackView.heightAnchor.constraint(equalToConstant: 50),
            statStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            statStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        ])
    }
                
    
}
