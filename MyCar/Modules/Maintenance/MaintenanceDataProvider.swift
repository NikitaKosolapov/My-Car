//
//  MaintenanceDataProvider.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class MaintenanceDataProvider: NSObject, MaintenanceDataProviderDelegate {

    weak var presenter: MaintenanceDataProviderOutput?

    override init() {
        super.init()
    }
}

extension MaintenanceDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension MaintenanceDataProvider: UITableViewDataSource {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension MaintenanceDataProvider: MaintenanceDataProviderInput {

}
