//
//  CollectionViewController.swift
//  Elegant
//
//  Created by KingCQ on 2016/10/12.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class CollectionViewController: ScrollViewController {
    var collectionView: UICollectionView!
    var cellType = CollectionViewCell.self

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView = UICollectionView(frame: view.bounds)
        collectionView.register(cellType: cellType)
        view.addSubview(collectionView)
    }

    override func reloadData() {
        collectionView.reloadData()
    }
}

//
// extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
//        return items.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return collectionView.dequeueReusableCell(withReuseIdentifier: cellType.reusableId, for: indexPath)
//    }
// }
