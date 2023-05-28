//
//  PWPrimaryContainerViewViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 26.05.2023.
//

import Foundation


final class PWPrimaryContainerViewViewModel {
    
    public let activityManager = ActivityManager.shared
    private let networkService = NetworkService()
    
    public var activity: Activity
    
    init() {
        self.activity = activityManager.getRandomActivity()
    }
    
    
}
