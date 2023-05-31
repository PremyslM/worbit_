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
    
    
    public func getRandomActivity() -> Activity? {
        
        guard let activities = activities else {
            fatalError("Failed to loac activites")
        }
        
        if !activities.isEmpty {
            let randomIndex = Int.random(in: 0..<activities.count)
            return activities[randomIndex]
        }
        
        let _testActivity = Activity(context: DataManager.shared.persistentContainer.viewContext)
        _testActivity.name = "TesŤák"
        
        return _testActivity
    }
    
    public func getActivity(_ activity: Constants.Activities) -> PWActivity {
        return Constants.activitiesArray[activity] ?? PWActivity(name: "Nothing", systemImage: "house")
    }
    
    
    // MARK: - Private
    
    private func loadActivities() {
        self.activities = self.currentUser.user?.activityArray
        print("count: ", (activities?.count)!)
    }
    
     
}
