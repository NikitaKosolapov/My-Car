//
//  CarDetailDataProvider.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class CarDetailDataProvider: NSObject, CarDetailDataProviderDelegate {

    weak var presenter: CarDetailDataProviderOutput?

    override init() {
        super.init()
    }
}

extension CarDetailDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension CarDetailDataProvider: UITableViewDataSource {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension CarDetailDataProvider: CarDetailDataProviderInput {

}