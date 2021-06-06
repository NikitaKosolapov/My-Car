//
//  GarageDataProvider.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import UIKit

final class GarageDataProvider: NSObject, GarageDataProviderDelegate {
    weak var presenter: GarageDataProviderOutput?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
