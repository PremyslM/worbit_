//
//  TrainingManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import Foundation


class TrainingManager {        
    
    public var trainingArray: [Training] {
        var result: [Training] = []
        fetchData { data in
            result = data
        }
        return result
    }
    
    public var randomTraining: Training {
        return trainingArray.randomElement()!
    }
    
    private func fetchData(completion: ([Training]) -> () ) {
        let trainingResult = TestData.trainings
        completion(trainingResult)
    }
    
    
}
