//
//  PWExerciseViewViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation

class PWExerciseViewViewModel {
    
    private let networkService = NetworkService()
    
    public var exercises: [ExerciseItem]?
    
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
