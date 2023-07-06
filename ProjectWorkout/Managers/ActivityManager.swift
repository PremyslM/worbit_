//
//  ActivityManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 26.05.2023.
//

import Foundation


final class ActivityManager {
    
    /// Singleton instast of self
    static let shared: ActivityManager = ActivityManager()
    
    /// Current active user
    private let currentUser = UserProfileManager.shared
    
    /// array of all activities
    public var activities: [Activity]?
    
    init() {
        fetchActivities()
    }
    
    /// Returns random activity
    ///
    /// Warning note
    /// ---
    /// - This method is now created only for testinf purpuses. In the future this method will be deleted (probably...).
    /// - Returns random activity from activity constants, and it's only use for test our view.
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
    
    /// Returns PWActiviti from activity enum (constants.activities)
    public func getActivity(_ activity: Constants.Activities) -> PWActivity {
        return Constants.activitiesArray[activity] ?? PWActivity(name: "Nothing", systemImage: "house", accuracy: 50.0)
    }
    
    
    // MARK: - Private
    
    /// Loading (fetching) our activity data
    private func fetchActivities() {
        self.activities = self.currentUser.user?.activityArray        
    }
    
     
}
