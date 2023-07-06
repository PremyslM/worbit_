//
//  TraininDay.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 06.07.2023.
//

import Foundation


struct TrainingDay {
    var date: Date
    var training: Training
    var completed: Bool
    var summary: String?
    var preparation: String?
    
    public var formatedDate: String {
        return DateManager().formatDateToString(date: date)
    }
}
