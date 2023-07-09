//
//  PWExerciseViewViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation

class PWExerciseViewViewModel {
    
    private let exerciseManager = ExerciseManager()
    
    // MARK: - Public
    
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
        print(exercises?.count as Any)
    }
    
    /// Loads all exercise data from our network service
    private func fetchData() {
        self.exercises = exerciseManager.exerciseArray
    }
    
    
}
