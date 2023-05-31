//
//  Activity+CoreDataProperties.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 31.05.2023.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var name: String?
    @NSManaged public var power: Float
    @NSManaged public var duration: Float
    @NSManaged public var distance: Float
    @NSManaged public var user: User?

}

extension Activity : Identifiable {

}
