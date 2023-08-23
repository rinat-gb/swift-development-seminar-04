//
//  FriendCell.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

import UIKit

final class FriendCell: UITableViewCell {
    private var statusImageView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.layer.cornerRadius = 25
        return view
    }()

    private var statusTextView: UILabel = {
        let label = UILabel()
        label.text = "UNKNOWN"
        label.textColor = .black
        return label
    }()

    private var photoView = UIImageView(image: UIImage(systemName: "person"))

    private var nameView: UILabel = {
        let label = UILabel()
        label.text = "UNKNOWN"
        label.textColor = .black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear

        setupViews()
        setupConstraints()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        contentView.addSubview(statusImageView)
        contentView.addSubview(statusTextView)
        contentView.addSubview(photoView)
        contentView.addSubview(nameView)
    }

    func setupConstraints() {
        statusImageView.translatesAutoresizingMaskIntoConstraints = false
        statusTextView.translatesAutoresizingMaskIntoConstraints = false
        photoView.translatesAutoresizingMaskIntoConstraints = false
        nameView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            statusImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            statusImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            statusImageView.widthAnchor.constraint(equalTo: friendImageView.heightAnchor),
            statusImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
/*
            friendImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            friendImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            friendImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            friendImageView.widthAnchor.constraint(equalTo: friendImageView.heightAnchor),
            friendImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),

            text.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            text.leadingAnchor.constraint(equalTo: friendImageView.trailingAnchor, constant: 10),
            text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
*/
        ])

    }
}
