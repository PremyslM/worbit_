//
//  UserProfileManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import Foundation


final class UserProfileManager {
    
    /// Singletom instance
    static let shared = UserProfileManager()
    
    var user: User?
    
    init() {
        fetchData()
    }
     
    
    // MARK: - Private
    
    /// Loading (fetching) our user data
    private func fetchData() {
        self.user = DataManager.currentUser
    }
    
}
