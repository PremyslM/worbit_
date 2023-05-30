//
//  User+CoreDataProperties.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 30.05.2023.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?

}

extension User : Identifiable {

}
