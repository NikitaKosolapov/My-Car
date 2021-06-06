//
//  ExpendituresDataProvider.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class ExpendituresDataProvider: NSObject, ExpendituresDataProviderDelegate {

    weak var presenter: ExpendituresDataProviderOutput?

    override init() {
        super.init()
    }
}

extension ExpendituresDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension ExpendituresDataProvider: UITableViewDataSource {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

extension ExpendituresDataProvider: ExpendituresDataProviderInput {

}
