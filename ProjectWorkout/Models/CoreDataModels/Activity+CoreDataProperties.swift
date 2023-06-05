//
//  Activity+CoreDataProperties.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 04.06.2023.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var distance: Float
    @NSManaged public var duration: Float
    @NSManaged public var name: String?
    @NSManaged public var power: Float
    @NSManaged public var image: String?
    @NSManaged public var user: User?
    
    public var unwrappedName: String {
        return name ?? "Unknown"
    }
    
    public var percentageDurationString: String {
        return "\(Int(duration * 100))%"
    }

}

extension Activity : Identifiable {

}
