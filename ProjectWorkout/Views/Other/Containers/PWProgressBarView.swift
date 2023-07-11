//
//  PWProgressBarView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 11.07.2023.
//

import UIKit


protocol PWProgressBarViewDataSource {
    func setProgressValue() -> Float
}

class PWProgressBarView: PWProgrammaticUIView {
    
    var delegate: PWProgressBarViewDataSource?
    
    private lazy var progressTitleLabel: UILabel = {
        let _progressTitleLabel: UILabel = UILabel()
        
        _progressTitleLabel.text = "DAILY\nPROGRESS"
        _progressTitleLabel.numberOfLines = 2
        _progressTitleLabel.textColor = .black
        _progressTitleLabel.font = .systemFont(ofSize: 25, weight: .semibold)
        
        return _progressTitleLabel
    }()
        
    private lazy var progressBarView: UIView = {
        let _progressBarView: UIView = UIView()
        
        _progressBarView.backgroundColor = .blue
        
        return _progressBarView
    }()
    
    
    override func setConfig() {
        self.addConstrainedSubViews(progressTitleLabel, progressBarView)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            progressBarView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            progressBarView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            progressBarView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            progressTitleLabel.leadingAnchor.constraint(equalTo: progressBarView.leadingAnchor),
            progressTitleLabel.trailingAnchor.constraint(equalTo: progressBarView.trailingAnchor),
            progressBarView.bottomAnchor.constraint(equalTo: progressBarView.topAnchor, constant: -20),
            progressBarView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    
}


extension PWProgressBarView {
    
    public func setContent(_ title: String) {
    
    }
    
    
}
