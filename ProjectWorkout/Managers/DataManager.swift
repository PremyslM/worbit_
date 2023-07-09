//
//  DataManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 30.05.2023.
//

import Foundation
import CoreData

class DataManager {
    
    private let dateManager = DateManager()
    private let trainingManager = TrainingManager()
    
    // MARK: - Public
    
    /// Singleton instance
    public static let shared = DataManager()
    
    /// Persistance container
    public lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ProjectWorkrout")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    /// Return current active user
    public static let currentUser: User = {
        let _user = TestData.currentUser
        
        return _user
    }()
    
    /// Formated activites array
    ///
    /// Constant that returns refortoreated set of Activities of type NSSet.
    public static let activitiesSet: NSSet = {
        var fetche = [Activity]()
        
        for ac in getActivities {
            let _ac = Activity(context: DataManager.shared.persistentContainer.viewContext)
            _ac.name = ac.name
            _ac.duration = ac.duration
            _ac.image = ac.image
            
            fetche.append(_ac)
        }
        
        let set = Set(fetche)
        
        return set as NSSet
    }()
    
    
    public static let exercises: [Exercise] = {
        var result: [Exercise] = []
        
        for training in TrainingManager().trainingArray! {
            for exercise in training.exercises {
                if !(result.contains(where: { exercise.title == $0.title })) {
                    result.append(exercise)
                }
            }
        }
        return result
    }()
    
    // MARK: - Private
    
    /// Core Data Saving support
    ///
    /// Saves data into CoreData persistance container
    private func save() {
        let context = persistentContainer.viewContext
        
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
    /// Constant return array of activities.
    public static let getActivities: [Activity] = {
        var fetchedActivities = [Activity]()
        for activity in Constants.activitiesArray {
            let _activity = Activity(context: DataManager.shared.persistentContainer.viewContext)
            _activity.name = activity.value.name
            _activity.duration = activity.value.accuracy
            _activity.image = activity.value.systemImage
            
            fetchedActivities.append(_activity)
        }
        
        return fetchedActivities
    }()
    
    public func getTrainingDayArray() -> [TrainingDay] {
        var resultArray: [TrainingDay] = []
        
        for dayDate in dateManager.daysInWeek {
            let newTrainingDay = TrainingDay(date: dayDate, training: trainingManager.randomTraining, completed: false)
            resultArray.append(newTrainingDay)
        }
        
        return resultArray
    }
    
    
}
