//
//  CoreDataServiceTests.swift
//  MyCarTests
//
//  Created by Nikita on 30.06.2021.
//

import XCTest
@testable import MyCar

class CoreDataServiceTests: XCTestCase {
    // Given
    var container: CoreDataServiceInput!
    var car: Car!

    override func setUp() {
        super.setUp()
        container = CoreDataService()

        car = Car(context: container.context)
        car.name = "TestCar"
        car.mileage = "100"
    }

    override func tearDown() {
        super.tearDown()

        container.delete(
            object: car,
            onSuccess: {

            }, onError: { _ in

            })
    }

    func testSaveContext() {
        container.saveContext(
            onSuccess: {

            },
            onError: { _ in
                XCTFail("Ошибка при записи в CoreData")
            })

        container.fetch(
            entityName: Car.nameOfClass(),
            onSuccess: { [weak self] carModels in
                guard let self = self else { return }
                XCTAssertTrue(carModels.contains(self.car))
            }, onError: { _ in
                XCTFail("Ошибка при чтении из CoreData")
            })
    }

    func testFetch() {
        container.fetch(
            entityName: Car.nameOfClass(),
            onSuccess: { [weak self] carModels in
                guard let self = self else { return }
                XCTAssertTrue(carModels.contains(self.car))
            },
            onError: { _ in
                XCTFail("Ошибка при чтении из CoreData")
            })
    }

    func testDelete() {
        container.delete(
            object: car,
            onSuccess: { [weak self] in

            },
            onError: { _ in
                XCTFail("Ошибка при записи в CoreData")
            })

        container.fetch(
            entityName: Car.nameOfClass(),
            onSuccess: { carModels in
                XCTAssertFalse(carModels.contains(self.car))
            }, onError: { _ in
                XCTFail("Ошибка при чтении из CoreData")
            })
    }
}
