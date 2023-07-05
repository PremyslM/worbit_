//
//  Training.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import Foundation


struct Training {
    var name: String
    var type: String
    var duration: Int // in `s`
    var difficulty: String
    var focusAreas: [String]
    var description: String
    var exercises: [Exercise]  // Seznam cvičení
    var restDays: Int
}

struct Exercise {
    var name: String
    var sets: Int
    var repetitions: Int
    var restTime: Int // in `s`
    var averageTime: Int  // in `s`
}
