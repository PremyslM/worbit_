//
//  PWTrainingStackViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import Foundation


class PWTrainingStackViewModel {
        
    // MARK: - Public
    
    public var trainingArray: [Training] {
        return trainingManager.trainingArray
    }
    public var daysInWeek: [String] {
        return Constants.daysInWeek
    }
    public var randomTraining: Training {
        guard let result = trainingArray.randomElement() else {
            print("Error")
            return Training(name: "", type: "", duration: 0, difficulty: "", focusAreas: [], description: "", exercises: [], restDays: 0)
        }
        return result
    }
    
    public func avgTimeToCompleteString(_ training: Training) -> String {
        var sum: Int = 0 // in `s`
        
        for exercise in training.exercises {
            sum += exercise.averageTime
        }
                
        let sumMinutes: Float = Float(sum) / 60
        let minutes = Int(sumMinutes)
        let seconds: Int = Int((sumMinutes - Float(minutes)) * 60)
        
        let result: String = "\(minutes)m \(seconds)s"
        return result
    }
        
    // MARK: - Private
    
    private let trainingManager = TrainingManager()
    
    
}
