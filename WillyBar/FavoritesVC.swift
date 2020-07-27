//
//  FavoritesVC.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/22.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit
import Hero

class FavoritesVC: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var typeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let w = UIScreen.main.bounds.width/2 - 20
        let h = w * 1.23871
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 66, right: 15)
        layout.itemSize = CGSize(width: w, height: h)
        layout.scrollDirection = .vertical
        
        collectionView.collectionViewLayout = layout
    }
    
    @IBAction func typeClick(_ sender: UIButton) {
        
        let typeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TypeVC") as! TypeVC
        typeVC.delegate = self
        
        present(typeVC, animated: true, completion: nil)
    }
}

extension FavoritesVC: TypeVCDelegate {
    
    func selectType(_ typeSpecies: Int) {
        
        typeBtn.titleLabel?.text = typeAry[typeSpecies]
    }
}

extension FavoritesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoritesCell", for: indexPath) as! FavoritesCell
        
        cell.imageView.image = UIImage(named: "test")
        cell.name.text = "testName"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        print(indexPath.row)
    }
}
