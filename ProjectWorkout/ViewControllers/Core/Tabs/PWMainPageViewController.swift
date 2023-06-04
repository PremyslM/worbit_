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
    
    override func loadView() {
        super.loadView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
                
        setupActivityPorgressBar()
        setConfig()
        setConstraints()
    }
            
        
}


private extension PWMainPageViewController {
    
    func setConfig() {
        self.view.addConstrainedSubViews(infoContainer, activityStatsView)               
                
        self.title = "Home"
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
        ])
        
    }
    
    func setupActivityPorgressBar() {
        var consTop = 50
        
        for activity in vc.actvities {
            let _activityProgressBar = PWActivityProgressBar()
            _activityProgressBar.activity = activity
                        
            self.view.addConstrainedSubViews(_activityProgressBar)
            
            // Configuring constraints that every progress bar will be under the other one
            NSLayoutConstraint.activate([
                _activityProgressBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(consTop)),
                _activityProgressBar.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                _activityProgressBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
                _activityProgressBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            ])
            
            consTop += 30
        }
        
    }
            
    
}
