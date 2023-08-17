//
//  MyFriendCell.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

import UIKit

final class MyFriendCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func friendNumber(number: Int) {
        var content = defaultContentConfiguration()
        content.text = "Друг под номером \(number + 1)"
        contentConfiguration = content
    }
}
