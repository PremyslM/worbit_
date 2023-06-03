//
//  DataManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 30.05.2023.
//

import Foundation
import CoreData

class DataManager {
    
    static let shared = DataManager()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ProjectWorkrout")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    //Core Data Saving support
    func save() {
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
    
    
    static let user: User = {
        let _user = User(context: DataManager.shared.persistentContainer.viewContext)
        _user.name = "Pepa"
        
        var fetche = [Activity]()
        
        for ac in getActivities {
            let _ac = Activity(context: DataManager.shared.persistentContainer.viewContext)
            _ac.name = ac.name
            _ac.duration = ac.duration
            
            fetche.append(_ac)
        }
        let set = Set(fetche)
        _user.exercise = set as NSSet
        
        return _user
    }()
    
    
    // MARK: - Private
    
    private static let getActivities: [Activity] = {
        
        var fetchedActivities = [Activity]()
        for activity in Constants.activitiesArray {
            let _activity = Activity(context: DataManager.shared.persistentContainer.viewContext)
            _activity.name = activity.value.name
            _activity.duration = activity.value.accuracy
            
            fetchedActivities.append(_activity)
        }
        
        return fetchedActivities
    }()
    
}
