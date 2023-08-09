//
//  APIService.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 09.08.2023.
//

import Foundation

enum APIError: String {
    case urlSessionError
    case serverError = "Invalid API Key."
    case invalidResponse = "Invalid response from server."
    case decodingError = "Error parsing server response."
}

protocol Service {
    
}

class APIService: Service {
    
    func makeRequest<T: Codable>(with request: URLRequest, completion: @escaping (T?, APIError?) -> Void) {
        
        URLSession.shared.dataTask(with: request) { data, resp, error in
            if let error = error {
                completion(nil, .urlSessionError)
                return
            }
            
            if let resp = resp as? HTTPURLResponse, resp.statusCode > 299 {
                completion(nil, .serverError)
                return
            }
            
            guard let data = data else {
                completion(nil, .invalidResponse)
                return
            }
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(result, nil)
            } catch let error {
                print(error)
                completion(nil, .decodingError)
                return
            }
            
        }.resume()
        
    }
    
    
}
