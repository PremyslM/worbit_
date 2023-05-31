//
//  PWActivity.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 31.05.2023.
//

import Foundation


struct PWActivity: Codable {
    let name: String
    let duration: Float
    let distance: Float
    let date: Date
    let activityType: String
    let heartRate: Int
}
