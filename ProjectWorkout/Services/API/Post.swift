//
//  Post.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 09.08.2023.
//

import Foundation


struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
