//
//  CoreDataService.swift
//  MyCar
//
//  Created by Nikita on 06.06.2021.
//

import Foundation
import CoreData

protocol CoreDataServiceInput: AnyObject {
    var context: NSManagedObjectContext { get }
    func saveContext(onSuccess: @escaping () -> Void,
                     onError: @escaping (NSError) -> Void)
    func fetch<T: NSManagedObject>(entityName: String,
                                   onSuccess: @escaping ([T]) -> Void,
                                   onError: @escaping (NSError) -> Void)
}

final class CoreDataService {
    private let modelName: String = "MyCar"

    private(set) lazy var context: NSManagedObjectContext = {
        let managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)

        managedObjectContext.persistentStoreCoordinator = self.coordinator

        return managedObjectContext
    }()

    private lazy var model: NSManagedObjectModel = {
        guard let modelURL = Bundle.main.url(forResource: self.modelName, withExtension: "momd") else {
            fatalError("Unable to Find Data Model")
        }

        guard let managedObjectModel = NSManagedObjectModel(contentsOf: modelURL) else {
            fatalError("Unable to Load Data Model")
        }

        return managedObjectModel
    }()

    private lazy var coordinator: NSPersistentStoreCoordinator = {
        let persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: self.model)

        let fileManager = FileManager.default
        let storeName = "\(self.modelName).sqlite"

        let documentsDirectoryURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]

        let persistentStoreURL = documentsDirectoryURL.appendingPathComponent(storeName)

        do {
            try persistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType,
                                                              configurationName: nil,
                                                              at: persistentStoreURL,
                                                              options: nil)
        } catch {
            fatalError("Unable to Load Persistent Store")
        }

        return persistentStoreCoordinator
    }()
}

extension CoreDataService: CoreDataServiceInput {
    func fetch<T: NSManagedObject>(
        entityName: String,
        onSuccess: @escaping ([T]) -> Void,
        onError: @escaping (NSError) -> Void
    ) {
        let fetchRequest = NSFetchRequest<T>(entityName: entityName)

        do {
            let objects = try context.fetch(fetchRequest)
            onSuccess(objects)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
            onError(error)
        }

    }

    func saveContext(onSuccess: @escaping () -> Void,
                     onError: @escaping (NSError) -> Void) {

        guard context.hasChanges else { return }

        do {
            try context.save()
            onSuccess()
        } catch let error as NSError {
            print("Error: \(error), \(error.userInfo)")
            onError(error)
        }
    }
}
