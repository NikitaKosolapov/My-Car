//
//  Car+CoreDataProperties.swift
//  MyCar
//
//  Created by Nikita on 15.06.2021.
//
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }

    @NSManaged public var name: String?
    @NSManaged public var mileage: String?

}
