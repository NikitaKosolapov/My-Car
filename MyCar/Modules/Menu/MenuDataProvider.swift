//
//  MenuDataProvider.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class MenuDataProvider: NSObject, MenuDataProviderDelegate {

    weak var presenter: MenuDataProviderOutput?

    override init() {
        super.init()
    }
}

extension MenuDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension MenuDataProvider: UITableViewDataSource {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension MenuDataProvider: MenuDataProviderInput {

}
