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
    
    private var viewModel: PWProgressBarViewModel?
        
    private lazy var progressTitleLabel: UILabel = {
        let _progressTitleLabel: UILabel = UILabel()
                
        _progressTitleLabel.numberOfLines = 2
        _progressTitleLabel.textColor = .black
        _progressTitleLabel.font = .systemFont(ofSize: 25, weight: .semibold)
        
        return _progressTitleLabel
    }()
        
    private lazy var progressBackgroundLayerView: UIView = {
        let _progressBarView: UIView = UIView()
        
        _progressBarView.backgroundColor = .theme.lightGray
        _progressBarView.layer.cornerRadius = 8
        
        return _progressBarView
    }()
    
    private lazy var progressForegroundLayerView: UIView = {
        let _progressForegroundLayerView: UIView = UIView()
        
        _progressForegroundLayerView.backgroundColor = .theme.accent
        _progressForegroundLayerView.layer.cornerRadius = 8
        
        return _progressForegroundLayerView
    }()
    
    private lazy var progressValueLabel: UILabel = {
        let _progressValueLabel = UILabel()
        
        _progressValueLabel.textColor = .theme.lightGray
        _progressValueLabel.font = .systemFont(ofSize: 20)
        _progressValueLabel.text = viewModel?.trainingDay.formatedProgressString
        
        return _progressValueLabel
    }()
    
    private lazy var heartIconImage: UIImageView = {
        let _heartIconImage = UIImageView()
        
        _heartIconImage.image = UIImage(systemName: "arrow.up.heart.fill")
        _heartIconImage.tintColor = .theme.darkGray
        
        return _heartIconImage
    }()
    
    
    override func setConfig() {
        self.viewModel = PWProgressBarViewModel()
        self.addConstrainedSubViews(progressTitleLabel, progressBackgroundLayerView, heartIconImage, progressForegroundLayerView, progressValueLabel)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            progressBackgroundLayerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            progressBackgroundLayerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            progressBackgroundLayerView.topAnchor.constraint(equalTo: progressTitleLabel.bottomAnchor),
            progressBackgroundLayerView.heightAnchor.constraint(equalToConstant: 100),
            
            progressForegroundLayerView.leadingAnchor.constraint(equalTo: progressBackgroundLayerView.leadingAnchor),
            progressForegroundLayerView.trailingAnchor.constraint(equalTo: progressBackgroundLayerView.trailingAnchor),
            progressForegroundLayerView.topAnchor.constraint(equalTo: progressBackgroundLayerView.topAnchor),
            progressForegroundLayerView.bottomAnchor.constraint(equalTo: progressBackgroundLayerView.bottomAnchor),
            progressForegroundLayerView.widthAnchor.constraint(equalTo: progressBackgroundLayerView.widthAnchor, multiplier: CGFloat((viewModel?.trainingDay.progress)!)),
            
            progressTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            progressTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            progressTitleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            
            progressValueLabel.topAnchor.constraint(equalTo: progressForegroundLayerView.topAnchor),
            progressValueLabel.bottomAnchor.constraint(equalTo: progressForegroundLayerView.bottomAnchor),
            progressValueLabel.centerXAnchor.constraint(equalTo: progressForegroundLayerView.centerXAnchor),
            
            heartIconImage.centerYAnchor.constraint(equalTo: progressBackgroundLayerView.centerYAnchor),
            heartIconImage.trailingAnchor.constraint(equalTo: progressBackgroundLayerView.trailingAnchor,  constant: -25),
            heartIconImage.heightAnchor.constraint(equalToConstant: 50),
            heartIconImage.widthAnchor.constraint(equalToConstant: 50),
        ])
        
    }
    
    
}


extension PWProgressBarView {
    
    public func setContent(_ title: String) {
        progressTitleLabel.text = title
    }
    
    
}
