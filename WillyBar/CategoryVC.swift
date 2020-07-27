//
//  CategoryVC.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/22.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

class CategoryVC: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let titleAry = ["全部種類", "伏特加", "琴酒", "蘭姆酒", "龍舌蘭", "威士忌", "白蘭地", "其他種類"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 66, right: 0)
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width-34, height: 90)
        layout.scrollDirection = .vertical
        
        collectionView.collectionViewLayout = layout
    }
}

extension CategoryVC: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return titleAry.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        
        cell.imageView.image = UIImage(named: "test")
        cell.title.text = titleAry[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        print(indexPath.row)
    }
}
