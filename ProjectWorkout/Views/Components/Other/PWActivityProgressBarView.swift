//
//  PWActivityProgressBarView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit

class PWActivityProgressBar: PWProgrammaticUIView {
    
    public var activity: Activity?
    
    private let vc = PWActivityProgressBarViewModel()
    
    private var progressValue: Float {
        return Float(vc.progressValue!)
    }
    
    private var imageIcon: UIImage {
        return vc.imageIcon!
    }
    
    // MARK: - Stored UI properties
    
    private lazy var activityIconView: UIImageView = {
        let _activityIcon = UIImageView()
        _activityIcon.image = imageIcon
        _activityIcon.tintColor = .theme.secondaryWhite
        
        return _activityIcon
    }()
    
    private lazy var progressBarIndicatorView: UIView = {
        let _progressBar = UIView()
        _progressBar.backgroundColor = .theme.secondaryWhite
        _progressBar.layer.cornerRadius = 6
        
        return _progressBar
    }()
    
    private lazy var progressBarBackgroundView: UIView = {
        let _progressBarBackgroundView = UIView()
        _progressBarBackgroundView.backgroundColor = .theme.secondaryWhite?.withAlphaComponent(0.3)
        _progressBarBackgroundView.layer.cornerRadius = 6
        
        return _progressBarBackgroundView
    }()
    
    
    // MARK: - Configuring UI
    
    override func setConfig() {
        vc.delegate = self
        self.addConstrainedSubViews(progressBarIndicatorView, activityIconView, progressBarBackgroundView)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            activityIconView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            activityIconView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            progressBarIndicatorView.leadingAnchor.constraint(equalTo: self.activityIconView.trailingAnchor, constant: 10),
            progressBarIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            progressBarIndicatorView.heightAnchor.constraint(equalToConstant: 10),
            progressBarIndicatorView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: CGFloat(progressValue)),
            
            progressBarBackgroundView.topAnchor.constraint(equalTo: self.progressBarIndicatorView.topAnchor),
            progressBarBackgroundView.bottomAnchor.constraint(equalTo: self.progressBarIndicatorView.bottomAnchor),
            progressBarBackgroundView.leadingAnchor.constraint(equalTo: self.progressBarIndicatorView.leadingAnchor),
            progressBarBackgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    
}


extension PWActivityProgressBar: PWActivityProgressBarDataSource {
    
    func setImageIcon() -> UIImage {
        return UIImage(systemName: activity?.image ?? "house")!
    }
    
    func setProgressValue() -> Float {
        return 0.4//0.3// TODO: Hard core value... don't use it.
    }
    
    
}
