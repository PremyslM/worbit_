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
        for tIndex in 0..<5 {
            let newTraining: Training = Training(name: "Test Trainig \(tIndex)", type: "Body Weight", duration: 45, difficulty: "Beginner", focusAreas: ["Uppder Chest", "Core", "Lower Chest"], description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?", exercises: exercises ?? [], restDays: 4)
            result.append(newTraining)
        }
        return result
    }
    
    private var exercises: [Exercise]?
    
    public var randomTraining: Training {
        return trainingArray.randomElement()!
    }
    
    init() {
        ExerciseManager().getData { result in
            self.exercises = result
        }
    }
    
    
}
