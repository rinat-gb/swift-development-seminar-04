//
//  GroupCell.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

import UIKit

final class GroupCell: UITableViewCell {
//    private var imageView: UIImageView?
//    private var nameView: UILabel?
//    private var descriptionView: UILabel?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func groupNumber(number: Int) {
        var content = defaultContentConfiguration()
        content.text = "Группа под номером \(number + 1)"
        contentConfiguration = content
    }
}
