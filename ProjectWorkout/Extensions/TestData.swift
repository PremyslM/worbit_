//
//  TestData.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 02.07.2023.
//

import Foundation


class TestData {
    
    /// Hardcore Test User
    ///
    /// Warning:
    /// >   - This is our test user.
    /// >   - Just for testing purpuses !
    static let currentUser: User = {
        let _user = User(context: DataManager.shared.persistentContainer.viewContext)
        _user.name = "Jon Doe"
        _user.exercise = DataManager.activitiesSet
        
        return _user
    }()
    
    
}
