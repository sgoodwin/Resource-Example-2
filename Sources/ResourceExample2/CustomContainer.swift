//
//  File.swift
//  
//
//  Created by Samuel Goodwin on 7/28/20.
//

import CoreData

public class CustomPersistentContainer: NSPersistentContainer {
    public static func container(group: String?) -> CustomPersistentContainer {
        let model = NSManagedObjectModel(contentsOf: Bundle.module.url(forResource: "Model", withExtension: "momd")!)!
        let container = CustomPersistentContainer(name: "Model", managedObjectModel: model)
        
        let sqlURL = CustomPersistentContainer.defaultDirectoryURL().appendingPathComponent("Publisher.sqlite")
        
        let sharedDescription = NSPersistentStoreDescription(url: sqlURL)
        sharedDescription.shouldMigrateStoreAutomatically = true
        sharedDescription.shouldInferMappingModelAutomatically = true
        container.persistentStoreDescriptions = [sharedDescription]
        return container
    }
}
