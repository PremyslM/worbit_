//
//  Exercise.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 06.07.2023.
//

import Foundation


struct Exercise: Codable {
    let id: Int
    let bodyPart: String
    let desc: String
    let equipment: String
    let level: String
    let rating: Float?
    let ratingDesc: String
    let title: String
    let type: String
    
    let avgTime: Int = Int.random(in: 0...10) // in s
    
    enum CodingKeys: String, CodingKey {
        case id = ""
        case bodyPart = "BodyPart"
        case desc = "Desc"
        case equipment = "Equipment"
        case level = "Level"
        case rating = "Rating"
        case ratingDesc = "RatingDesc"
        case title = "Title"
        case type = "Type"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try container.decode(Int.self, forKey: .id)
        bodyPart = try container.decode(String.self, forKey: .bodyPart)
        desc = try container.decode(String.self, forKey: .desc)
        equipment = try container.decode(String.self, forKey: .equipment)
        level = try container.decode(String.self, forKey: .level)
        
        if let ratingString = try? container.decode(String.self, forKey: .rating), ratingString.isEmpty {
            rating = nil
        } else {
            rating = try container.decode(Float.self, forKey: .rating)
        }
        
        ratingDesc = try container.decode(String.self, forKey: .ratingDesc)
        title = try container.decode(String.self, forKey: .title)
        type = try container.decode(String.self, forKey: .type)
    }
}


// var averageTime: Int  // in `s`
