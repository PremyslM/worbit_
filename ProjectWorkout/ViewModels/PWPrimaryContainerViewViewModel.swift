//
//  PWPrimaryContainerViewViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 26.05.2023.
//

import Foundation


final class PWPrimaryContainerViewViewModel {
        
    // MARK: - Public
    
    public let activityManager = ActivityManager.shared
    
    public var activity: Activity
    
    
    // MARK: - Private
    private let networkService = NetworkService()
        
    init(activity: Activity) {
        self.activity = activity
    }
    
    
}
