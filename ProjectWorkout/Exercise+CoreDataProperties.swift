//
//  Exercise+CoreDataProperties.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 30.05.2023.
//
//

import Foundation
import CoreData


extension Exercise {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Exercise> {
        return NSFetchRequest<Exercise>(entityName: "Exercise")
    }

    @NSManaged public var name: String?
    @NSManaged public var type: String?
    @NSManaged public var muscle: String?
    @NSManaged public var quipment: String?
    @NSManaged public var difficulty: String?
    @NSManaged public var instructions: String?
    
    

}

extension Exercise : Identifiable {

}
