//
//  PWLineView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 11.07.2023.
//

import UIKit


class PWLineView: PWProgrammaticUIView {
    
    override func setConfig() {
        self.backgroundColor = .theme.gray
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 10),            
        ])
    }
    
    
}
