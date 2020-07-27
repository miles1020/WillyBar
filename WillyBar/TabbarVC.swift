//
//  ViewController.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/22.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import GoogleMobileAds

class TabbarVC: ESTabBarController {

    var interstitial: GADInterstitial!
    var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if !isRemoveAD {
        addBannerViewToView()
//        }
        
        initVC()
    }
    
    func addBannerViewToView() {
        
        bannerView = GADBannerView(adSize: kGADAdSizeFullBanner)
        
        #if DEBUG
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        #else
        bannerView.adUnitID = "ca-app-pub-1223027370530841/1450243155"
        #endif

        bannerView.delegate = self
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bannerView)
        bannerView.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: 0).isActive = true
        bannerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        bannerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        view.bringSubviewToFront(tabBar)
    }
    
    func initVC() {
        
        let hotVC = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HotVC") as! HotVC)
        let categoryVC = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CategoryVC") as! CategoryVC)
        let diceVC = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DiceVC") as! DiceVC)
        let favoritesVC = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FavoritesVC") as! FavoritesVC)
        let setVC = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SetVC") as! SetVC)
        
        hotVC.tabBarItem = ESTabBarItem(ExampleIrregularityBasicContentView(), title: "Hot", image: UIImage(named: "hot"), selectedImage: UIImage(named: "hot-1"))
        categoryVC.tabBarItem = ESTabBarItem(ExampleIrregularityBasicContentView(), title: "分類", image: UIImage(named: "list"), selectedImage: UIImage(named: "list-1"))
        diceVC.tabBarItem = ESTabBarItem(ExampleIrregularityContentView(), title: "", image: UIImage(named: "dice"), selectedImage: UIImage(named: "dice-1"))
        favoritesVC.tabBarItem = ESTabBarItem(ExampleIrregularityBasicContentView(), title: "收藏", image: UIImage(named: "collect"), selectedImage: UIImage(named: "collect-1"))
        setVC.tabBarItem = ESTabBarItem(ExampleIrregularityBasicContentView(), title: "設定", image: UIImage(named: "set"), selectedImage: UIImage(named: "set-1"))
        
        let barTintColor = UIColor(red: 63/255.0, green: 63/255.0, blue: 63/255.0, alpha: 1.0)
        hotVC.navigationBar.barTintColor = barTintColor
        categoryVC.navigationBar.barTintColor = barTintColor
        diceVC.navigationBar.barTintColor = barTintColor
        favoritesVC.navigationBar.barTintColor = barTintColor
        setVC.navigationBar.barTintColor = barTintColor
        
        tabBar.shadowImage = UIImage(named: "transparent")
        tabBar.backgroundImage = UIImage(named: "background_dark")
        
        viewControllers = [hotVC, categoryVC, diceVC, favoritesVC, setVC]
    }
}

extension TabbarVC: GADBannerViewDelegate, GADInterstitialDelegate {

}
