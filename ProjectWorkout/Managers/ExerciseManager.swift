//
//  ExerciseManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 09.07.2023.
//

import Foundation


class ExerciseManager {
    
    public var exerciseArray: [Exercise]?
    
    init() {
        fetchData()
    }
    
    private func fetchData() {
        let networkService = NetworkService<Exercise>()
        
        networkService.fetchData(apiString: "http://10.0.0.22:5000", headers: [:]) { success, result in
            print("NUM: \(result?.count ?? 0)")
            if success {
                self.exerciseArray = result!
            } else {
                self.exerciseArray = []
                print("Failed to load data from api")
            }
        }
        
    }
    
    
}
