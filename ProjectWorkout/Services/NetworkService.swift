//
//  NetworkService.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation

class NetworkService {
    
    /**
     Fetches exercise data from the API.

     - Parameters:
        - completion: A closure to be called when the fetch operation completes. It takes two parameters:
            - success: A boolean value indicating whether the fetch operation was successful.
            - result: An optional array of `ExerciseItem` objects containing the fetched exercise data. This parameter will be `nil` if the fetch operation fails.

     - Note: The completion closure is called on the main thread.

     - Important: This method requires a valid API key to be set in the `X-Api-Key` header field of the request.

     Example usage:
     ``` swift
     fetchData { success, result in
     if success {
        // Process the fetched exercise data
        if let exerciseItems = result {
        // Handle the fetched exercise items
        }
     } else {
        // Handle the fetch error
        }
     }
     ```
     */
    func fetchData(completion: @escaping (_ success: Bool, _ result: [ExerciseItem]?) -> ()) {
       // Set the X-Api-Key header
       let headers = [
           "X-Api-Key": Constants.APIKeys.apiNinjas.rawValue,
       ]

       // Create a mutable URL request with the exercise API endpoint
       let request = NSMutableURLRequest(url: NSURL(string: Constants.Endpoints.exercises.rawValue)! as URL,
                                         cachePolicy: .useProtocolCachePolicy,
                                         timeoutInterval: 10.0)
       request.httpMethod = "GET"
       request.allHTTPHeaderFields = headers

       // Create a URLSession and initiate a data task
       let session = URLSession.shared
       let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
           if let error = error {
               // An error occurred during the fetch operation
               completion(false, nil)
               return
           }

           // Check if data was received
           guard let data = data else { return }

           do {
               // Decode the received data into an array of `ExerciseItem` objects
               let decodedData = try JSONDecoder().decode([ExerciseItem].self, from: data)
               completion(true, decodedData)
           } catch {
               completion(false, nil)
           }
       })
       dataTask.resume()
    }
    
    
}
