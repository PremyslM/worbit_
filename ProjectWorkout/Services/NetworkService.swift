//
//  NetworkService.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation

class NetworkService {
    
    func fetchData(completion: @escaping (_ succes: Bool, _ result: [ExerciseItem]?) -> ()) {

        let headers = [
            "X-Api-Key": Constants.APIKeys.apiNinjas.rawValue,
        ]

        let request = NSMutableURLRequest(url: NSURL(string: Constants.Endpoints.exercises.rawValue)! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                completion(false, nil)
            }
            
            guard let data = data else { return }
            
            do {
                let decodedData = try JSONDecoder().decode([ExerciseItem].self, from: data)
                completion(true, decodedData)
            } catch {
                completion(false, nil)
            }
        })
        dataTask.resume()
    }
    
    
}
