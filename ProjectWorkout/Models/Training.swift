//
//  Training.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import Foundation


struct Training: Codable {
    
    var name: String
    var type: String
    var duration: Int // in `s`
    var difficulty: String
    var focusAreas: [String]
    var description: String
    var exercises: [Exercise]  // Seznam cvičení
    var restDays: Int
    
    var avgTimeToCompleteString: String {
        var sum: Int = 0 // in `s`
        
        for exercise in self.exercises {
            sum += exercise.averageTime * exercise.repetitions
        }
                
        let sumMinutes: Float = Float(sum) / 60
        let minutes = Int(sumMinutes)
        let seconds: Int = Int((sumMinutes - Float(minutes)) * 60)
        
        let result: String = "\(minutes)m \(seconds)s"
        return result
    }
    
    
}
