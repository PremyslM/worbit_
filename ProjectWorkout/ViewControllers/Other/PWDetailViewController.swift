//
//  PWDetailViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.06.2023.
//

import UIKit


class PWDetailViewController: UIViewController {
    
    var activity: Activity?    
    
    let vm: PWActivityDetailViewModel = PWActivityDetailViewModel()
    
    private lazy var activityContainer: PWPrimaryContainerView = {
        let _activityContainer = PWPrimaryContainerView()
        _activityContainer.layer.cornerRadius = 16
        _activityContainer.setActivity(activity: activity!)
        _activityContainer.backgroundColor = .theme.primaryBackground?.withAlphaComponent(0.5)
        
        return _activityContainer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addConstrainedSubViews(activityContainer)
        self.view.backgroundColor = .theme.primaryBackground
        
        //activityContainer.setActivity(activity: activity!)
        
        activityContainer.setActivity(activity: self.activity!)
        
        vm.dataSource = self
                
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
    
    func setUI(activity: Activity) {
        self.activity = activity
    }
    
    
}


extension PWDetailViewController: PWActivityDetailDataSource {
    
    func getActvity() -> Activity {        
        return (self.activity)!
    }
    
    
}
