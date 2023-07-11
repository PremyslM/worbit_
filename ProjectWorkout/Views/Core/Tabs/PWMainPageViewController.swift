//
//  PWMainPageView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit

// TODO: - Create a ViewController from this UIView PWMAinPageView
/// This PWProgrammaticUIView class represents One of futere pages that will be loaded in ViewController to display them.
final class PWMainPageViewController: UIViewController {
    
    let vc = PWMainPageViewModel()
    
    private lazy var infoContainer: PWPrimaryContainerView = {
        let _infoContainer = PWPrimaryContainerView()
        _infoContainer.layer.cornerRadius = 16
        _infoContainer.backgroundColor = .theme.primaryWhite?.withAlphaComponent(0.25)
        return _infoContainer
    }()
    
    private lazy var activityStatsView: PWActivityStatsView = {
        let _activityStatsView = PWActivityStatsView()
        
        return _activityStatsView
    }()
    
    private lazy var dailyProgressBarView: PWProgressBarView = PWProgressBarView()
    
    private lazy var progressStackView: PWProgressBarStackView = PWProgressBarStackView()
    
    
    override func loadView() {
        super.loadView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
                        
        setConfig()
        setConstraints()
        
        infoContainer.setActivity(activity: vc.activity)
    }
            
        
}


private extension PWMainPageViewController {
    
    func setConfig() {
        self.view.addConstrainedSubViews(infoContainer, activityStatsView, dailyProgressBarView)
        
        
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            infoContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            infoContainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100),
            infoContainer.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9),
            infoContainer.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3),
            
            activityStatsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            activityStatsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            activityStatsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityStatsView.bottomAnchor.constraint(equalTo: infoContainer.topAnchor, constant: -100),
            
            dailyProgressBarView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            dailyProgressBarView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            dailyProgressBarView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            dailyProgressBarView.bottomAnchor.constraint(equalTo: self.activityStatsView.topAnchor, constant: -20)
        ])
        
    }
            
    
}
