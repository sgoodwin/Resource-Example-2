//
//  Entry+CoreDataProperties.swift
//  ResourceExample2
//
//  Created by Samuel Goodwin on 7/28/20.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var timestamp: Date?

}
