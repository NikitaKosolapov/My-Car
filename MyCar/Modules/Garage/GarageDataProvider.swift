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
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let car = cars[indexPath.row]
        cell.textLabel?.text = car.name
        cell.detailTextLabel?.text
        cell.selectionStyle = .blue
        return cell
    }
}

extension GarageDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
        let car = cars[indexPath.row]

        self.presenter?.removeCar(car)
        self.cars.remove(at: indexPath.row)

        tableView.beginUpdates()
        tableView.deleteRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
      }
    }
}

extension GarageDataProvider: GarageDataProviderInput {
    func set(_ carModels: [Car]) {
        self.cars = carModels
    }
}
