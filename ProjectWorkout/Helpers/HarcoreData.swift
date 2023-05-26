//
//  HarcoreData.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 26.05.2023.
//

import Foundation


struct HardcoreData {
    
    public static let activities: [Activity] = [
        Activity(name: "Běh", duration: 23.4, distance: 21, date: Date.now, activityType: "Cardio", heartRate: 123, statistics: ActivityStats(caloriesBurned: 234, performance: 129, averageSpeed: 5.4, maxHeartRate: 187)),
        Activity(name: "Chůze", duration: 2.4, distance: 40, date: Date.now, activityType: "FreeTime", heartRate: 123, statistics: ActivityStats(caloriesBurned: 234, performance: 129, averageSpeed: 5.4, maxHeartRate: 187)),
        Activity(name: "Plavání", duration: 4, distance: 3.4, date: Date.now - 10000, activityType: "Cardio", heartRate: 143, statistics: ActivityStats(caloriesBurned: 304, performance: 80, averageSpeed: 10.4, maxHeartRate: 154)),
    ]
    
    
}
