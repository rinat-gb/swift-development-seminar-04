//
//  GroupsTableViewController.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

import UIKit

final class GroupsTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = Constants.Titles.GroupsTitle

        NetworkService().getGroups()
    }

    // ЗАКОММЕНТИРОВАНО ПО СРАВНЕНИЮ С КОДОМ ИЗ ДОМАШНЕГО ЗАДАНИЯ ПРЕДЫДУЩЕГО СЕМИНАРА
    //
    // нам необходимо отображать только одну секцию
    // если не задавать эту функцию, то уже существующая по умолчанию реализация в UIKit
    // возвращает как раз единицу и поэтому отдельно реалтзовывать функцию, возвращающую
    // единицу, нам не требуется.
    //
    // override func numberOfSections(in _: UITableView) -> Int {
    //     1
    // }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        5
    }

    override func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let groupCell = GroupCell()
        groupCell.groupNumber(number: indexPath.item)
        return groupCell
    }
}
