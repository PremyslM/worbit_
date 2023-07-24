//
//  WOTimelineView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 14.07.2023.
//

import UIKit


class WOTimelineViewModel {
    
    private let exerciseManager = ExerciseManager()
    
    // MARK: - Public
    
    public var delegate: UIViewController?
    
    /// Return save / Unwrapped array of exercises
    public var unwrappedExercises: [Exercise] {
        return exercises ?? []
    }
    
    
    // MARK: - Private
    
    /// Instance of NetworkService
    private let networkService = NetworkService<Exercise>()
    
    /// Array of all exercises
    private var exercises: [Exercise]?
    
    init() {
        fetchData()
    }
    
    /// Loads all exercise data from our network service
    private func fetchData() {
        exerciseManager.getData { responseData in
            self.exercises = responseData
        }
    }
    
    
}
