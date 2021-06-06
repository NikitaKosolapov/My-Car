//
//  GarageDataProvider.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import UIKit

final class GarageDataProvider: NSObject, GarageDataProviderDelegate {
    weak var presenter: GarageDataProviderOutput?

}

extension GarageDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "hello"
        cell.selectionStyle = .blue
        return cell
    }
}

extension GarageDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension GarageDataProvider: GarageDataProviderInput {

}
