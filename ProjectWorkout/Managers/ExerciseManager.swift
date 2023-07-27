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
        //fetchData()
    }
    
    public func getData(completion: @escaping ([Exercise]?) -> Void) {
        fetchData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(self.exerciseArray)
        }
    }
    
    /**
     Fetches exercise data from the local API using the NetworkService.
     
     The fetched data is assigned to the exerciseArray property.
     
     - Important: Ensure that the local API is accessible and returns exercise data in the expected format.
     */
    private func fetchData() {
        let networkService = NetworkService<Exercise>()
        var isConnected: Bool = false
        
        for endpoint in Constants.Endpoints.list {
            networkService.fetchData(apiString: endpoint, headers: [:]) { success, result in
                if success {
                    self.exerciseArray = result!
                    isConnected = true
                    print("\(endpoint): ✅\nExercise array count: \((result?.count) ?? 0)\n*-----------------*")
                } else {
                    self.exerciseArray = []
                    print("\(endpoint): ❌")
                }
            }
            
            if isConnected {
                break
            }
        }
        
    }
    
    
}
