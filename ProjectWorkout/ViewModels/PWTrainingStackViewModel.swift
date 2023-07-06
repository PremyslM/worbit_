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
    public var trainingDaysArray: [TrainingDay] {
        return dataManager.getTrainingDayArray()
    }
    public var dateDaysArray: [Date] {
        return dateManager.daysInWeek
    }
    public var randomTraining: Training {
        guard let result = trainingArray.randomElement() else {
            return Training(name: "", type: "", duration: 0, difficulty: "", focusAreas: [], description: "", exercises: [], restDays: 0)
        }
        return result
    }
    public var currentDay: Date {
        return dateManager.currentDay
    }
    public var currentDayString: String {
        let stringDate = dateManager.formatDateToString(date: currentDay)        
        return dateManager.getDayNameFromString(dateString: stringDate)!        
    }
    
    public func getDayNameFromString(_ dateString: String) -> String {
        return dateManager.getDayNameFromString(dateString: dateString)!
    }
        
    // MARK: - Private
    
    private let trainingManager = TrainingManager()
    private let dataManager = DataManager()
    private let dateManager = DateManager()
    
    
}
