//
//  UserProfileManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation


final class UserProfileManager {
    
    static let shared = UserProfileManager()
    
    var user: User?
    
    init() {
        fetchData()
    }
     
    
    // MARK: - Private    
    
    private func fetchData() {
        self.user = DataManager.user
    }
    
}
