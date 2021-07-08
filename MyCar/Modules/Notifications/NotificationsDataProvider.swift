//
//  NotificationsDataProvider.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class NotificationsDataProvider: NSObject, NotificationsDataProviderDelegate {

    weak var presenter: NotificationsDataProviderOutput?

    override init() {
        super.init()
    }
}

extension NotificationsDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension NotificationsDataProvider: UITableViewDataSource {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension NotificationsDataProvider: NotificationsDataProviderInput {

}