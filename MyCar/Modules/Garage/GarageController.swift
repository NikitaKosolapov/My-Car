//
//  GarageController.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import Foundation
import UIKit

final class GarageController: BaseController, GarageAssemblable {
    var showController: ShowController?
    var presenter: GaragePresenterInput?
    var dataProvider: GarageDataProviderDelegate?

    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)

        table.dataSource = self.dataProvider
        table.delegate = self.dataProvider

        table.rowHeight = UITableView.automaticDimension
        table.autoresizesSubviews = true
        table.estimatedRowHeight = 80

        table.backgroundColor = .clear
        table.separatorStyle = .singleLine
        table.contentInset = .zero
        table.showsVerticalScrollIndicator = false
        table.tableFooterView = UIView()

        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension GarageController: GaragePresenterOutput {
    func reload() {
        self.tableView.reloadData()
    }
}

private extension GarageController {
    func setupUI() {
        self.navigationItem.rightBarButtonItem  = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewCar))
        self.navigationController?.navigationBar.tintColor = .blue

        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.left.right.top.equalToSuperview()
            $0.bottom.equalToSuperview().inset(tabBarHeight)
        }

        self.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
    }

    @objc func addNewCar() {
        let alert = UIAlertController(title: "New Name", message: "Add a new name", preferredStyle: .alert)

        let saveAction = UIAlertAction(title: "Save", style: .default) { [unowned self] _ in
            guard let textField = alert.textFields?.first,
                  let name = textField.text else { return }

            self.presenter?.addNewCar(name: name)
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)

        present(alert, animated: true)
    }
}
