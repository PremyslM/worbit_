//
//  TrainingManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import Foundation


class TrainingManager {        
    
    public var trainingArray: [Training]?
    
    init() {
        fetchData()
    }
    
    public var randomTraining: Training {
        return trainingArray!.randomElement()!
    }
    
    private func fetchData() {        
    }
    
    
}
