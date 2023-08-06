//
//  WOTimelineView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 14.07.2023.
//

import UIKit


class WOTimelineViewModel {
    
    // MARK: - Public
    
    /// Return save / Unwrapped array of exercises
    public var unwrappedExercises: [Exercise] {
        return exercises ?? []
    }
    
    
    // MARK: - Private
    
    private let exerciseManager = ExerciseManager()
    
    /// Instance of NetworkService
    private let networkService = NetworkService<Exercise>()
    
    /// Array of all exercises
    private var exercises: [Exercise]?
    
    init() {
        fetchData()
    }
    
    /// Loads all exercise data from our network service
    private func fetchData() {
        exerciseManager.getData(amount: 2) { responseData in
            self.exercises = responseData
        }
    }
    
    
}
