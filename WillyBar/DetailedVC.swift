//
//  DetailedVC.swift
//  WillyBar
//
//  Created by HellöM on 2020/7/27.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

class DetailedVC: UIViewController {

    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var materialTableView: UITableView!
    var isCollect = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewHeight.constant = 44*5
    }
    
    @IBAction func collectClick(_ sender: UIBarButtonItem) {
        
        var toastStr = ""
        
        if isCollect {
            
            sender.image = UIImage(named: "collect")
            toastStr = "已取消收藏"
        } else {
            
            sender.image = UIImage(named: "collect-1")
            toastStr = "已收藏"
        }
        isCollect = !isCollect
        showToast(toastStr)
    }
}

extension DetailedVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailedCell", for: indexPath)
        
        
        return cell
    }
    
    
    
}
