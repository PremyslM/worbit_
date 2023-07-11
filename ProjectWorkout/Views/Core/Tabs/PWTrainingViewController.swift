//
//  PWTrainingViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import UIKit


class PWTrainingViewController: UIViewController {
    
    private lazy var trainingScheduleView: PWTrainingStackView = PWTrainingStackView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Training"
                                        
        setConfig()
        setConstraints()
    }
    
    
}


private extension PWTrainingViewController {
        
    func setConfig() {
        
        view.backgroundColor = .theme.background
        view.addConstrainedSubViews(trainingScheduleView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            trainingScheduleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            trainingScheduleView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trainingScheduleView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
            
    
}
