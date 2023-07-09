//
//  Exercise.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 06.07.2023.
//

import Foundation



struct Exercise: Codable {
    //let id: Int
    let bodyPart: String
    //let desc: String?
    let equipment: String
    let level: String
    let rating: Int
    let ratingDesc: String?
    let title: String
    let type: String
   
    
    enum CodingKeys: String, CodingKey {
        //case id = ""
        case bodyPart = "BodyPart"
        //case desc = "Desc"
        case equipment = "Equipment"
        case level = "Level"
        case rating = "Rating"
        case ratingDesc = "RatingDesc"
        case title = "Title"
        case type = "Type"
    }
     
}


// var averageTime: Int  // in `s`
