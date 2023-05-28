//
//  UserProfileManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation


final class UserProfileManager {
    
    static let shared = UserProfileManager()
    
    var user: UserProfile?
    
    init() {
        fetchData()
    }
    
    private func fetchData() {
        self.user = UserProfile(
            name: "John Doe",
            activities: HardcoreData.activities)
    }
    
    
}
