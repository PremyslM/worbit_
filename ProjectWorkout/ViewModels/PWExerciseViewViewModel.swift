//
//  PWExerciseViewViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation

class PWExerciseViewViewModel {
    
    // MARK: - Public
    
    /// Return save / Unwrapped array of exercises
    public var unwrappedExercises: [ExerciseItem] {
        return exercises ?? []
    }
    
    
    // MARK: - Private
    
    /// Instance of NetworkService
    private let networkService = NetworkService()
    
    /// Array of all exercises
    private var exercises: [ExerciseItem]?
    
    init() {
        fetchData()
    }
    
    /// Loads all exercise data from our network service
    private func fetchData() {
        networkService.fetchData { [weak self] success, result in
            if success {
                self?.exercises = result!
            } else {
                print("Failed to fetch data from network service")
            }
        }
    }
    
    
}
