//
//  NetworkService.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation

class NetworkService<T: Codable> {    
    /**
     Fetches exercise data from the API.

     - Parameters:
        - completion: A closure to be called when the fetch operation completes. It takes two parameters:
            - **success**: A boolean value indicating whether the fetch operation was successful.
            - **result**: An optional array of `ExerciseItem` objects containing the fetched exercise data. This parameter will be `nil` if the fetch operation fails.

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
    func fetchData(apiString: String, headers: [String: String],completion: @escaping (_ success: Bool, _ result: [T]?) -> ()) {
       // Set the X-Api-Key header

       // Create a mutable URL request with the exercise API endpoint
       let request = NSMutableURLRequest(url: NSURL(string: apiString)! as URL,
                                         cachePolicy: .useProtocolCachePolicy,
                                         timeoutInterval: 10.0)
       request.httpMethod = "GET"
       request.allHTTPHeaderFields = headers

       // Create a URLSession and initiate a data task
       let session = URLSession.shared
       let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
           if error != nil {
               // An error occurred during the fetch operation
               completion(false, nil)
               print("Failed to load api")
               return
           }

           // Check if data was received
           guard let data = data else { return }
           
           do {
               let decoder = JSONDecoder()
               decoder.keyDecodingStrategy = .custom { keys -> CodingKey in
                   let key = keys.last!.stringValue
                   return AnyCodingKey(stringValue: key)
               }               
               let exercises = try decoder.decode([T].self, from: data)
               completion(true, exercises)
           } catch {
               completion(false, nil)
               print("Error decoding JSON: \(error)")
           }

       })
       dataTask.resume()
    }
    
    
}


struct AnyCodingKey: CodingKey {
    var stringValue: String
    var intValue: Int? { return nil }
    
    init(stringValue: String) {
        self.stringValue = stringValue
    }
    
    init?(intValue: Int) {
        return nil
    }
}
