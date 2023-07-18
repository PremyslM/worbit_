//
//  TraininDay.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 06.07.2023.
//

import Foundation


struct TrainingDay: Codable {
    var date: Date
    var training: Training
    var progress: Float
    var summary: String?
    var preparation: String?
    
    var completed: Bool {
        return (progress < 1) ? false : true 
    }
    
    public var formatedDate: String {
        return DateManager().formatDateToString(date: date)
    }
}
