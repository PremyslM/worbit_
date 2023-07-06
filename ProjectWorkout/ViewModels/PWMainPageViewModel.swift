//
//  PWMainPageViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 04.06.2023.
//

import Foundation


final class PWMainPageViewModel {
    
    /// Singleton instance of ActivitiManager
    private let activityManager = ActivityManager.shared
    
    /// returns random user activity displayed on main page
    public var activity: Activity {
        activityManager.getRandomActivity()!
    }
    
    /// returns unwrapped array of activities
    public var actvities: [Activity] {
        return activityManager.activities ?? []
    }
}
