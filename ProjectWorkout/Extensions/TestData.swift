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
    
    static let currentDay: String = Constants.daysInWeek[4]
    
    /// Hardcore Test Training
    ///
    /// Warning:
    /// >   - This is our test user.
    /// >   - Just for testing purpuses !
    public static let trainings: [Training] = [
        Training(
            name: "Tréninkový plán 1",
            type: "Strength Training",
            duration: 3600, // 1 hodina
            difficulty: "Intermediate",
            focusAreas: ["Lower Body", "Upper Body", "Core"],
            description: "Tento tréninkový plán je zaměřen na posílení celého těla.",
            exercises: [
                // ...
            ],
            restDays: 2
        ),
        Training(
            name: "Tréninkový plán 2",
            type: "Strength Training",
            duration: 3600, // 1 hodina
            difficulty: "Intermediate",
            focusAreas: ["Lower Body", "Upper Body", "Core"],
            description: "Tento tréninkový plán je zaměřen na posílení celého těla.",
            exercises: [
                // ...
            ],
            restDays: 2
        ),
        Training(
            name: "Tréninkový plán 3",
            type: "Cardio Training",
            duration: 2400, // 40 minut
            difficulty: "Beginner",
            focusAreas: ["Cardiovascular", "Full Body"],
            description: "Tento tréninkový plán je zaměřen na zlepšení kardiovaskulární kondice a posílení celého těla.",
            exercises: [
                // ...
            ],
            restDays: 1
        )
    ]
    
}
