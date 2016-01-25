//
//  DetailViewController.swift
//  CaaSTest2
//
//  Created by Serhii Onopriienko on 1/25/16.
//  Copyright © 2016 Edsson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!


    let dataSource = CashPointDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.layer.cornerRadius = 7.0
        collectionView.registerNib(UINib(nibName: CashPointSectionCell.identifier, bundle: nil), forCellWithReuseIdentifier: CashPointSectionCell.identifier)
        collectionView.registerNib(UINib(nibName: CashPointTextCell.identifier, bundle: nil), forCellWithReuseIdentifier: CashPointTextCell.identifier)
        collectionView.registerNib(UINib(nibName: CashPointImageCell.identifier, bundle: nil), forCellWithReuseIdentifier: CashPointImageCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = dataSource
    }
    
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        
        collectionView.collectionViewLayout.invalidateLayout()
    }
}



extension DetailViewController: UICollectionViewDelegate {
    
}
