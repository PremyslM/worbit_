//
//  User+CoreDataProperties.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 31.05.2023.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var exercise: NSSet?

    public var unwrappedName: String {
        return name ?? "Unknown"
    }
    
    public var activityArray: [Activity] {
        let set = exercise as? Set<Activity> ?? []
        
        return set.sorted {
            $0.name! < $1.name!
        }
    }
    
    
}

// MARK: Generated accessors for exercise
extension User {

    @objc(addExerciseObject:)
    @NSManaged public func addToExercise(_ value: Activity)

    @objc(removeExerciseObject:)
    @NSManaged public func removeFromExercise(_ value: Activity)

    @objc(addExercise:)
    @NSManaged public func addToExercise(_ values: NSSet)

    @objc(removeExercise:)
    @NSManaged public func removeFromExercise(_ values: NSSet)

}

extension User : Identifiable {

}
