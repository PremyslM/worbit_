//
//  PWActivityProgressBarView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit

class PWActivityProgressBar: PWProgrammaticUIView {
    
    // MARK: - Stored properties
    public var progressBarValue: Float? {
        didSet {
            NSLayoutConstraint.activate([
                progressBarView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: CGFloat(progressBarValue ?? 0))
            ])
        }
    }
    
    
    // MARK: - Stored UI properties
    
    public lazy var activityIconView: UIImageView = {
        let _activityIcon = UIImageView()
        _activityIcon.tintColor = .theme.secondaryWhite
        
        return _activityIcon
    }()
    
    private lazy var progressBarView: UIView = {
        let _progressBar = UIView()
        _progressBar.backgroundColor = .theme.secondaryWhite
        _progressBar.layer.cornerRadius = 6
        
        return _progressBar
    }()
    
    
    // MARK: - Configuring UI
    
    override func setConfig() {
        self.addConstrainedSubViews(progressBarView, activityIconView)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            activityIconView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            activityIconView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            progressBarView.leadingAnchor.constraint(equalTo: self.activityIconView.trailingAnchor, constant: 10),
            progressBarView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            progressBarView.heightAnchor.constraint(equalToConstant: 10),
        ])
    }
    
    
}
