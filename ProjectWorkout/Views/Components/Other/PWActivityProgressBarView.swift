//
//  PWActivityProgressBarView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit

class PWActivityProgressBar: PWProgrammaticUIView {
            
    private lazy var progressBarView: UIView = {
        let _progressBar = UIView()
        _progressBar.backgroundColor = .theme.secondaryWhite
        _progressBar.layer.cornerRadius = 6
        
        return _progressBar
    }()
    
    public lazy var activityIconView: UIImageView = {
        let _activityIcon = UIImageView()
        _activityIcon.tintColor = .theme.secondaryWhite
        
        return _activityIcon
    }()
        
    
    override func setConfig() {
        self.addConstrainedSubViews(progressBarView, activityIconView)                
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            activityIconView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            activityIconView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                        
            progressBarView.leadingAnchor.constraint(equalTo: self.activityIconView.trailingAnchor, constant: 10),
            progressBarView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            progressBarView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            progressBarView.heightAnchor.constraint(equalToConstant: 10),
        ])
    }
}
