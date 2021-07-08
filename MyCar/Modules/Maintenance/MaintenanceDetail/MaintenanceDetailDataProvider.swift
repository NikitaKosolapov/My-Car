//
//  MaintenanceDetailDataProvider.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class MaintenanceDetailDataProvider: NSObject, MaintenanceDetailDataProviderDelegate {

    weak var presenter: MaintenanceDetailDataProviderOutput?

    override init() {
        super.init()
    }
}

extension MaintenanceDetailDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension MaintenanceDetailDataProvider: UITableViewDataSource {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension MaintenanceDetailDataProvider: MaintenanceDetailDataProviderInput {

}