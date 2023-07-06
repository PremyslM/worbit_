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
            return Training(name: "", type: "", duration: 0, difficulty: "", focusAreas: [], description: "", exercises: [], restDays: 0)
        }
        return result
    }
    public var currentDay: String = TestData.currentDay
        
    // MARK: - Private
    
    private let trainingManager = TrainingManager()
    
    
}
