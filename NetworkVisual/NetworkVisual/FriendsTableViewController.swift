//
//  FriendsTableViewController.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

import UIKit

final class FriendTableViewController: UITableViewController {
    private var friends: FriendsModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = Constants.Titles.FriendsTitle

        NetworkService().getFiends()
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
        return friends?.response.count ?? 0
    }

    override func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friendCell = FriendCell()
        return friendCell
    }
}
