//
//  PWDetailViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.06.2023.
//

import UIKit


class PWDetailViewController: UIViewController {
            
    let vm: PWActivityDetailViewModel = PWActivityDetailViewModel()
    
    private lazy var activityContainer: PWPrimaryContainerView = {
        let _activityContainer = PWPrimaryContainerView()
        _activityContainer.layer.cornerRadius = 16
        _activityContainer.setActivity(activity: vm.activity!)
        _activityContainer.backgroundColor = .theme.background?.withAlphaComponent(0.5)
        
        return _activityContainer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addConstrainedSubViews(activityContainer)
        self.view.backgroundColor = .theme.background
        
        activityContainer.setActivity(activity: vm.activity!)
                
        setConstraints()
    }
    
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            activityContainer.topAnchor.constraint(equalTo: view.topAnchor),
            activityContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            activityContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            activityContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
}

extension PWDetailViewController {
    
    // MARK: - Public
    
    public func setUI(activity: Activity) {
        vm.setUI(activity: activity)
    }
    
    
}
