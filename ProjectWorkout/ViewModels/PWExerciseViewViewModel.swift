//
//  PWExerciseViewViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import UIKit

class PWExerciseViewViewModel {
    
    var delegate: UICollectionView?
    
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
    private var exercises: [Exercise]? {
        didSet {
            self.delegate?.reloadData()
        }
    }
    
    init() {
        fetchData()        
    }
    
    /// Loads all exercise data from our network service
    private func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.exercises = self.exerciseManager.exerciseArray
        }
    }
    
    
}
