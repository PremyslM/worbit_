//
//  PWExerciseViewViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation

class PWExerciseViewViewModel {
    
    private let networkService = NetworkService()
    
    private var exercises: [ExerciseItem]?
    
    public var unwrappedExercises: [ExerciseItem] {
        return exercises ?? []
    }
    
    init() {
        fetchData()
    }
    
    private func fetchData() {
        networkService.fetchData { [weak self] success, result in
            if success {
                self?.exercises = result!
                print("Success")
            } else {
                print("Failururururururururu")
            }
        }
    }
}
