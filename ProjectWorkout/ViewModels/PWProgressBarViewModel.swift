//
//  PWProgressBarViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 18.07.2023.
//

import Foundation


class PWProgressBarViewModel {
    
    public var trainingDay: TrainingDay {
        return DataManager().getTrainingDayArray().randomElement()!
    }
    
    
}
