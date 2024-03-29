//
//  ExerciseManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 09.07.2023.
//

import Foundation

/**
 The ExerciseManager class is responsible for managing exercise data fetched from a local API.
 
 ## API Source
 The exercise data is retrieved from the following local API:
 [http://10.0.0.22:5000](http://10.0.0.22:5000)
 
 - Note: Ensure that the local API is accessible and returns exercise data in the expected format.
 Important: This class requires the NetworkService class to fetch exercise data from the API.
 - SeeAlso: Exercise.
 **/
class ExerciseManager {
    
    /// An array of Exercise objects representing the fetched exercise data.
    public var exerciseArray: [Exercise]?
    
    /**
     Initializes an instance of the ExerciseManager class and fetches exercise data from the local API.
     
     Fetching is done asynchronously, and the exerciseArray property will be populated with the fetched data.
     */
    init() {
        fetchData()
    }
    
    /**
     Fetches exercise data from the local API using the NetworkService.
     
     The fetched data is assigned to the exerciseArray property.
     
     - Important: Ensure that the local API is accessible and returns exercise data in the expected format.
     */
    private func fetchData() {
        let networkService = NetworkService<Exercise>()
        
        networkService.fetchData(apiString: "http://10.0.0.22:5000", headers: [:]) { success, result in
            print("NUM: \(result?.count ?? 0)")
            if success {
                self.exerciseArray = result!
            } else {
                self.exerciseArray = []
                print("Failed to load data from the API")
            }
        }
                
    }
    
    
}
