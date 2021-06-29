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

    func saveContext(
        onSuccess: @escaping () -> Void,
        onError: @escaping (NSError) -> Void)

    func fetch<T: NSManagedObject>(
        entityName: String,
        onSuccess: @escaping ([T]) -> Void,
        onError: @escaping (NSError) -> Void)

    func delete(
        object: NSManagedObject,
        onSuccess: @escaping () -> Void,
        onError: @escaping (NSError) -> Void)
}

final class CoreDataService {
    private let modelName: String = "MyCar"

    lazy var context: NSManagedObjectContext = self.storeContainer.viewContext

    private var savingContext: NSManagedObjectContext {
        return storeContainer.newBackgroundContext()
    }

    private var storeURL: URL {
        let storePaths = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)
        let storePath = storePaths[0] as NSString
        let fileManager = FileManager.default

        do {
            try fileManager.createDirectory(
                atPath: storePath as String,
                withIntermediateDirectories: true,
                attributes: nil)
        } catch {
            print("Error creating storePath \(storePath): \(error)")
        }

        let sqliteFilePath = storePath
            .appendingPathComponent(modelName + ".sqlite")
        return URL(fileURLWithPath: sqliteFilePath)
    }

    private lazy var storeDescription: NSPersistentStoreDescription = {
        let description = NSPersistentStoreDescription(url: self.storeURL)
        return description
    }()

    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: self.modelName)
        container.persistentStoreDescriptions = [self.storeDescription]
        container.loadPersistentStores { (_, error) in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
        return container
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

    func delete(object: NSManagedObject,
                onSuccess: @escaping () -> Void,
                onError: @escaping (NSError) -> Void) {
        context.delete(object)

        saveContext(onSuccess: onSuccess, onError: onError)
    }
}
