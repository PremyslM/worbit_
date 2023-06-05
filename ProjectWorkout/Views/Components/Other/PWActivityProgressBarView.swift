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
        return Float(vc.progressValue)
    }
    
    private var imageIcon: UIImage {
        return vc.imageIcon
    }
    
    // MARK: - Stored UI properties
    
    private lazy var activityIconView: UIImageView = {
        let _activityIcon = UIImageView()
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
        activityIconView.image = vc.imageIcon        
    }
    
    
    init(_ activity: Activity) {
        self.activity = activity
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            activityIconView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            activityIconView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            progressBarIndicatorView.leadingAnchor.constraint(equalTo: self.activityIconView.trailingAnchor, constant: 10),
            progressBarIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            progressBarIndicatorView.heightAnchor.constraint(equalToConstant: 10),
            progressBarIndicatorView.widthAnchor.constraint(equalTo: self.progressBarBackgroundView.widthAnchor, multiplier: CGFloat(vc.progressValue)),
            
            progressBarBackgroundView.topAnchor.constraint(equalTo: self.progressBarIndicatorView.topAnchor),
            progressBarBackgroundView.bottomAnchor.constraint(equalTo: self.progressBarIndicatorView.bottomAnchor),
            progressBarBackgroundView.leadingAnchor.constraint(equalTo: self.progressBarIndicatorView.leadingAnchor),
            progressBarBackgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    
}


extension PWActivityProgressBar: PWActivityProgressBarDataSource {
    
    func setImageIcon() -> UIImage {
        return UIImage(systemName: activity?.image ?? "xmark")!
    }
    
    func setProgressValue() -> Float {
        return Float(activity?.duration ?? 0.0)
    }
    
    
}
