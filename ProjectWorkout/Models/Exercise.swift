//
//  Exercise.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 27.05.2023.
//

import Foundation

struct Exercise: Codable {
    let name: String?
    let type: String?
    let muscle: String?
    let equipment: String?
    let difficulty: String?
    let instructions: String?
}
