//
//  HarcoreData.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 26.05.2023.
//

import Foundation


struct HardcoreData {
    
    public static let activities: [PWActivity] = [
        /*
        Activity(name: "Běh", duration: 23.4, distance: 21, date: Date.now, activityType: "Cardio", heartRate: 123, statistics: ActivityStats(caloriesBurned: 234, performance: 129, averageSpeed: 5.4, maxHeartRate: 187)),
        Activity(name: "Chůze", duration: 2.4, distance: 40, date: Date.now, activityType: "FreeTime", heartRate: 123, statistics: ActivityStats(caloriesBurned: 234, performance: 129, averageSpeed: 5.4, maxHeartRate: 187)),
        Activity(name: "Plavání", duration: 4, distance: 3.4, date: Date.now - 10000, activityType: "Cardio", heartRate: 143, statistics: ActivityStats(caloriesBurned: 304, performance: 80, averageSpeed: 10.4, maxHeartRate: 154)),
         */
     
        PWActivity(name: "Běh", duration: 34, distance: 65, date: Date.now, activityType: "NONE", heartRate: 124),
        PWActivity(name: "Plavání", duration: 23, distance: 65, date: Date.now, activityType: "NONE", heartRate: 124),
        PWActivity(name: "Cyklistika", duration: 187, distance: 190, date: Date.now, activityType: "NONE", heartRate: 187),
        PWActivity(name: "Golf", duration: 12, distance: 0.6, date: Date.now, activityType: "NONE", heartRate: 98),
    ]
    
    public static let hardcoreActivities: [Activity] = {
        var fetchedActivities = [Activity]()
        for activity in activities {
            let _activity = Activity(context: DataManager.shared.persistentContainer.viewContext)
            _activity.name = activity.name
            _activity.duration = activity.duration
            _activity.distance = activity.distance
            
            fetchedActivities.append(_activity)
        }
        
        return fetchedActivities
    }()
    
    public static let hardcoreUser: User = {
        let _user = User(context: DataManager.shared.persistentContainer.viewContext)
        _user.name = "Pepa"
                
        var fetche = [Activity]()
        
        for ac in hardcoreActivities {
            let _ac = Activity(context: DataManager.shared.persistentContainer.viewContext)
            _ac.name = ac.name
            _ac.duration = ac.duration
            
            print("Fetche appended")
            fetche.append(_ac)
        }
        
        print("Fetche count: \(fetche.count)")
        
        let set = Set(fetche)
        
        _user.exercise = set as NSSet
        
        return _user
    }()
    
}
