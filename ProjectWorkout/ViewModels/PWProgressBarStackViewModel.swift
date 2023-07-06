//
//  PWProgressBarStackViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 11.06.2023.
//

import Foundation


class PWProgressBarStackViewModel {
    
    /// Singleton instace of ActivityManager class (shared)
    private let activityManager = ActivityManager.shared
    
    /// Returns unwrapped array of activities
    public var activites: [Activity] {
        return activityManager.activities ?? []
    }
    
    
}
