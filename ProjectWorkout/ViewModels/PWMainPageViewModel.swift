//
//  PWMainPageViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 04.06.2023.
//

import Foundation


final class PWMainPageViewModel {
    
    private let activityManager = ActivityManager.shared
    
    public var actvities: [Activity] {
        return activityManager.unwrappedActivities
    }
}
