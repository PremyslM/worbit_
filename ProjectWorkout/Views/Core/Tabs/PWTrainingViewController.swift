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
        
        view.backgroundColor = .theme.primaryBackground
        view.addConstrainedSubViews(trainingScheduleView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            trainingScheduleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),        
            trainingScheduleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            trainingScheduleView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
            
    
}
