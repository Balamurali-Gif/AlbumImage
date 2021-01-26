//
//  ViewController.swift
//  Remote.JASON
//
//  Created by Bala Murali on 26/01/2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
   override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.datasource = self
        view.addSubview(collectionView)
    }
    func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int{
        return 30
    }
    
    func collectionView(_ collectionView: UIcollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
    }
}
