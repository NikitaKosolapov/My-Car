//
//  Car+CoreDataProperties.swift
//  MyCar
//
//  Created by Nikita on 30.06.2021.
//
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }

    @NSManaged public var mileage: String?
    @NSManaged public var name: String?
    @NSManaged public var photo: NSObject?
    @NSManaged public var model: String?
    @NSManaged public var brand: String?
    @NSManaged public var manufactureYear: String?
    @NSManaged public var licensePlate: String?
    @NSManaged public var vin: String?

}
