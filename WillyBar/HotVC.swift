//
//  HotVC.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/22.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

class HotVC: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 66, right: 0)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width-34, height: UIScreen.main.bounds.width-34+42)
        layout.scrollDirection = .vertical
        
        collectionView.collectionViewLayout = layout
    }
}

extension HotVC: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HotCell", for: indexPath) as! HotCell
        
        cell.imageView.image = UIImage(named: "test")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        print(indexPath.row)
    }
}
