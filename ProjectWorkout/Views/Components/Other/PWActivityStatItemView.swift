//
//  PWActivityStatsView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


class PWActivityStatItemView: PWProgrammaticUIView {

    private lazy var statStackView: UIStackView = {
        let _statStackView = UIStackView()
        _statStackView.axis = .vertical
        _statStackView.alignment = .center
        
        return _statStackView
    }()
    
    public lazy var statLabel: UILabel = {
        let _statLabel = UILabel()
        _statLabel.text = "Heard rate"
        _statLabel.font = .systemFont(ofSize: 18)
        
        return _statLabel
    }()
    
    public lazy var statValueLabel: UILabel = {
        let _valueLabel = UILabel()
        _valueLabel.text = "86%"
        _valueLabel.font = .systemFont(ofSize: 28, weight: .semibold)
        
        return _valueLabel
    }()
    
    
    // MARK: - Configuring UI
    
    override func setConfig() {
        self.addConstrainedSubViews(statStackView)
        self.statStackView.addArrangedSubview(statLabel)
        self.statStackView.addArrangedSubview(statValueLabel)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            statStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            statStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),            
        ])
    }
    
    
}
