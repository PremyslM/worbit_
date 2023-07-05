//
//  PWTrainingViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import UIKit


class PWTrainingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                        
        setConfig()
        setConstraints()
    }
    
    
}


private extension PWTrainingViewController {
        
    func setConfig() {
        view.backgroundColor = .theme.primaryBackground
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
            
    
}
