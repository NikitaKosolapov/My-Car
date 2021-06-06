//
//  GarageDataProvider.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import UIKit
import CoreData

final class GarageDataProvider: NSObject, GarageDataProviderDelegate {
    weak var presenter: GarageDataProviderOutput?
    private var cars: [Car] = []
}

extension GarageDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        let car = cars[indexPath.row]
        cell.textLabel?.text = car.name
        cell.selectionStyle = .blue
        return cell
    }
}

extension GarageDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension GarageDataProvider: GarageDataProviderInput {
    func set(_ carModels: [Car]) {
        self.cars = carModels
    }
}
