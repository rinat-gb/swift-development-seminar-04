//
//  PhotosCollectionViewController.swift
//  NetworkVisual
//
//  Created by Ринат on 15.08.2023.
//

import UIKit

final class PhotosCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = Constants.Titles.PhotosTitle

        collectionView.backgroundColor = .systemBackground
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: Constants.CellNames.PhotosCellName)

        NetworkService().getPhotos()
    }

    // ЗАКОММЕНТИРОВАНО ПО СРАВНЕНИЮ С КОДОМ ИЗ ДОМАШНЕГО ЗАДАНИЯ ПРЕДЫДУЩЕГО СЕМИНАРА
    //
    // нам необходимо отображать только одну секцию
    // если не задавать эту функцию, то уже существующая по умолчанию реализация в UIKit
    // возвращает как раз единицу и поэтому отдельно реалтзовывать функцию, возвращающую
    // единицу, нам не требуется.
    //
    // override func numberOfSections(in _: UICollectionView) -> Int {
    //     1
    // }

    override func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellNames.PhotosCellName, for: indexPath)
        return cell
    }

    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        // делаем высоту и ширину одинаковыми чтобы получился квадрат
        let size = UIScreen.main.bounds.width / 2 - 10
        return CGSize(width: size, height: size)
    }
}
