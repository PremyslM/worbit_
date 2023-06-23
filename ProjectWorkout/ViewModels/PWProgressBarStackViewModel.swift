//
//  PWProgressBarStackViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 11.06.2023.
//

import Foundation


class PWProgressBarStackViewModel {
    
    private let activityManager = ActivityManager.shared
    
    var activites: [Activity] {
        return activityManager.activities ?? []
    }
    
    
}
