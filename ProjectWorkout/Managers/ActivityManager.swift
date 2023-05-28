//
//  ActivityManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 26.05.2023.
//

import Foundation


final class ActivityManager {
    
    static let shared: ActivityManager = ActivityManager()
    
    private let currentUser = UserProfileManager.shared
    
    public var activities: [Activity]?
    
    init() {
        loadActivities()
    }
    
    
    public func getRandomActivity() -> Activity {
        
        guard let activities = activities else {
            fatalError("Failed to loac activites")
        }
        
        let randomIndex = Int.random(in: 0..<activities.count)
        let randomActivity = activities[randomIndex]
        
        return randomActivity
    }
    
    
    // MARK: - Private
    
    private func loadActivities() {
        self.activities = currentUser.user?.activities
    }
    
     
}
