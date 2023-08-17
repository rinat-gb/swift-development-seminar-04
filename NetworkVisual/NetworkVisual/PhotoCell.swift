//
//  PhotoCell.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

import UIKit

final class PhotoCell: UICollectionViewCell {
    private var imageView = UIImageView(image: UIImage(systemName: "person"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
