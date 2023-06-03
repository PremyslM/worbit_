//
//  PWActivityStatItemView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 02.06.2023.
//

import Foundation


final class PWActivityStatItemViewViewModel {
    
    let activityManager = ActivityManager.shared
    
    var activity: Activity?
    
    
    public var value: String {
        return String(describing: activity?.duration)
    }
    
    
}

