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

    private lazy var table: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)

        table.dataSource = self.dataProvider
        table.delegate = self.dataProvider

        table.rowHeight = UITableView.automaticDimension
        table.autoresizesSubviews = true
        table.estimatedRowHeight = 80

        table.backgroundColor = .blue
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

}

private extension GarageController {
    func setupUI() {
        view.addSubview(table)
        table.snp.makeConstraints {
            $0.left.right.top.equalToSuperview()
            $0.bottom.equalToSuperview().inset(tabBarHeight)
        }

        if #available(iOS 13.0, *) {
            self.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        } else {
            // Fallback on earlier versions
        }
    }
}
