//
//  PWActivityProgressBarView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit

class PWActivityProgressBar: PWProgrammaticUIView {
    
    private let vc = PWActivityProgressBarViewModel()
    
    private var progressValue: Float {
        return Float(vc.progressValue!)
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
        
        vc.delegate = self
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            activityIconView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            activityIconView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            progressBarView.leadingAnchor.constraint(equalTo: self.activityIconView.trailingAnchor, constant: 10),
            progressBarView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            progressBarView.heightAnchor.constraint(equalToConstant: 10),
            progressBarView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: CGFloat(progressValue))
        ])
    }
    
    
}


extension PWActivityProgressBar: PWActivityProgressBarDataSource {
    func setProgressValue() -> Float {
        return 0.8 // TODO: Hard core value... don't use it.
    }
    
    
}
